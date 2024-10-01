#import music21 as m21
import random as random
import abjad as abjad
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-02-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../violin1/pm-02-vln1-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../rh/pm-02-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 2:
		input_measure = r'\include "../lh/pm-02-lh-'+str(measure_number)+r'.ly"'
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
	block.items.append(r"""\new StaffGroup""")
	block.items.append("<<")
	# Violin 1
	block.items.append("%Violin1")
	block.items.append(r'\context Staff = "violin1" \with { instrumentName = "Violini unis." }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"violin" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r'\bar".|:"')
	block.items.append(r'\mark \markup{Premiere Partie}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			block.items.append(r'\bar":|.|:"')
			block.items.append(r'\break')
			block.items.append(r'\mark \markup{Seconde Partie}')
	block.items.append(r'\bar":|."')
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append(">>")
	block.items.append("%Harpsichord part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}')
	block.items.append("<<")
	block.items.append(r'\context Staff = "rh" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[1][i])
	block.items.append(r'}')
	block.items.append(r'\context Staff = "lh" {')
	block.items.append(r'\include "../bassline_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[2][i])
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
[23,63,79,13,43,32],
[77,54,75,57,7,47],
[62,2,42,64,86,84],
[70,53,5,74,31,20],
[29,41,50,11,18,22],
[83,37,69,3,89,49],
[59,71,52,67,87,56],
[36,90,8,73,58,48],
#Second part
[33,55,4,95,38,44],
[60,46,12,78,93,76],
[21,88,94,80,15,34],
[14,39,9,30,92,19],
[45,65,25,1,28,17],
[68,6,35,51,61,10],
[26,91,66,82,72,27],
[40,81,24,16,85,96]
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
number_voices = 3

result_strings = abjad_make_include_strings(result,number_voices)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./kirnberger-1767-02/temp/")

#rename the file(s)
source_dir = './kirnberger-1767-02/temp/'
target_dir = './kirnberger-1767-02/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"pm-02-out-"+r_string+".ly")
