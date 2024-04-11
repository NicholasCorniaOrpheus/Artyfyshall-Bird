import random 
import abjad 
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../rh/ws-02-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../lh/ws-02-lh-'+str(measure_number)+r'.ly"'
	return input_measure

def abjad_make_include_strings(m,number_voices):
	# Input : result array of measures selected out of the random choice.
	# number of voices, in this case 3 (singing, right and left hand)
	include_strings = [ [0]*len(m) for _ in range(number_voices)]
	for i in range(len(m)):
		for j in range(number_voices):
			include_strings[j][i]=abjad_appendmeasure_fragment(m[i],j)
	return include_strings

def make_subtitle(choices):
	# Generates a subtitle to be appended in the header of the lilypond file
	string = [str(_) for _ in choices]
	string = "-".join(string)
	string = f"[{string}]"
	string = r'\header { piece = \markup "' + string + '" }'
	string += "\n"
	return string		

def abjad_make_score(include_s,include_length,choices):
	# Input array of include files, according to measure n. and voice.,
	# number of measures (8), set of results choices to generate subtitle.
	# Paper settings, with language, version and header:
	first_part_length = 8
	papersettings = r"""\include "../paper_settings.ly" """
	subtitle = make_subtitle(choices)
	# Generating Score block
	block = abjad.Block("score")
	block.items.append("<<")
	# Bind together the two violin parts
	block.items.append("%Harpsichord part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}')
	block.items.append("<<")
	block.items.append(r'\context Staff = "rh" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r'\bar".|:"')
	block.items.append(r'\mark \markup{Erster Theil}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			block.items.append(r'\bar":|.|:"')
			block.items.append(r'\break')
			block.items.append(r'\mark \markup{Zweiter Theil}')
	block.items.append(r'\bar"|."')
	block.items.append(r'}')
	block.items.append(r'\context Staff = "lh" {')
	block.items.append(r'\include "../bassline_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[1][i])
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append(">>")
	block.items.append(r'\include "../layout_settings.ly"')

	lilypond_file = abjad.LilyPondFile(
		lilypond_language_token=False,
		lilypond_version_token=False,
	)

	lilypond_file.items.append(papersettings)
	lilypond_file.items.append(subtitle)
	lilypond_file.items.append(block)
	score_ly = abjad.lilypond(lilypond_file)
	#print(score_ly)
	return lilypond_file

#Measures list
print ("List of possible fragments:")
# measure choices
measure_list = [
[70,10,33,36,105],
[14,64,1,114,150],
[164,100,160,8,57],
[122,12,163,35,71],
[25,149,77,111,117],
[153,30,156,39,52],
[18,161,168,137,132],
[167,11,172,44,130],
# Second Part
[155,148,22,4,136],
[3,28,176,157,91],
[162,135,62,38,138],
[170,173,126,9,19],
[13,169,31,151,134],
[166,174,24,32,101],
[95,2,159,17,154],
[5,20,41,171,146]
]


result =[]
r_string = ""
for i in range(len(measure_list)):
	result.append(random.choice(measure_list[i]))
	r_string+=str(result[i])
	if i<(len(measure_list)-1):
		r_string+="-"


print ("Sampled fragments:")
print (result)
#print (r_string)

result_strings = abjad_make_include_strings(result,2)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./simrock-mozart-1790-02/temp/")

#rename the file(s)
source_dir = './simrock-mozart-1790-02/temp/'
target_dir = './simrock-mozart-1790-02/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"ws-02-out-"+r_string+".ly")
