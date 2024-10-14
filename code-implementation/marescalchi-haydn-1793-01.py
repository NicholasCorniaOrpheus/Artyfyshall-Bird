import random 
import abjad 
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../rh/gf-01-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../lh/gf-01-lh-'+str(measure_number)+r'.ly"'
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
	block.items.append("%Harpsichord part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"piano"}')
	block.items.append("<<")
	block.items.append(r'\context Staff = "rh" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r'\mark \markup{Prima parte del minuetto}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			block.items.append(r'\bar"||"')
			#block.items.append(r'\break')
			block.items.append(r'\mark \markup{Seconda parte del minuetto}')
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
# Minuetto Part 1
[96,32,69,40,148,104,152,119,98,3,54],
[22,6,95,17,74,157,60,84,142,87,130],
[141,128,158,113,163,27,171,114,42,165,10],
[41,63,13,85,45,167,53,50,156,61,103],
[105,146,153,161,80,154,99,140,75,135,28],
[122,46,55,2,97,68,133,86,129,47,37],
[11,134,110,159,36,118,21,169,62,147,106],
[30,81,24,100,107,91,127,94,123,33,5],
# Minuetto Part 2
[70,117,66,90,25,538,16,120,65,102,35],
[121,39,139,176,143,71,155,88,77,4,20],
[26,126,15,7,64,150,57,48,19,31,108],
[9,56,132,34,125,29,175,166,82,164,92],
[112,174,73,67,76,101,43,51,137,144,12],
[49,18,58,160,136,162,168,115,38,59,124],
[109,116,145,52,1,23,89,72,149,173,44],
[14,83,79,170,93,151,172,111,8,78,131]

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
abjad.show(lilypond_file, output_directory="./marescalchi-haydn-1793-01/temp/")

#rename the file(s)
source_dir = './marescalchi-haydn-1793-01/temp/'
target_dir = './marescalchi-haydn-1793-01/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"gf-01-out-"+r_string+".ly")
