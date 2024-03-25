import music21 as m21
import random as random
import abjad as abjad
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../violin1/pm-01-vln1-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../violin2/pm-01-vln2-'+str(measure_number)+r'.ly"'
	if voice_number == 2:
		#merge vln1 and 2 in right hand
		input_measure = r'<<{\include "../violin1/pm-01-vln1-'+str(measure_number)+r'.ly" } \\ { \include "../violin2/pm-01-vln2-'+str(measure_number)+r'.ly" } >>'
	if voice_number == 3:
		input_measure = r'\include "../lh/pm-01-lh-'+str(measure_number)+r'.ly"'
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
	first_part_length = 6
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
	block.items.append(r'\context Staff = "violin1" \with { instrumentName = "Viol. 1" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"violin" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r'\bar".|:"')
	block.items.append(r'\mark \markup{Ersten Theile}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			block.items.append(r'\bar":|.|:"')
			block.items.append(r'\break')
			block.items.append(r'\mark \markup{Zwenten Theile}')
	block.items.append(r'\bar":|."')
	block.items.append(r'}')
	block.items.append(">>")
	# Violin 2
	block.items.append("%Violin2")
	block.items.append(r'\context Staff = "violin2" \with { instrumentName = "Viol. 2" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"violin" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[1][i])

	block.items.append(r'}')
	block.items.append(">>")

	block.items.append(">>")

	block.items.append("%Harpsichord part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"harpsichord"}')
	block.items.append("<<")
	block.items.append(r'\context Staff = "rh" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[2][i])
	block.items.append(r'}')
	block.items.append(r'\context Staff = "lh" {')
	block.items.append(r'\include "../bassline_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[3][i])
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
[70,10,42,62,44],
[34,24,6,8,56],
[68,50,60,36,40,4],
[18,46,2,12,79,28],
[32,14,52,16,48,22],
[58,26,66,38,54,64],
#second part
[80,20,82,42,78,69],
[11,77,3,41,84,63],
[59,65,9,45,29,7],
[35,5,83,17,76,47],
[74,27,67,37,61,19],
[13,71,1,49,57,31],
[21,15,53,73,51,81],
[33,39,25,23,75,55]
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

result_strings = abjad_make_include_strings(result,4)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./kirnberg-1767-01/temp/")

#rename the file(s)
source_dir = './kirnberg-1767-01/temp/'
target_dir = './kirnberg-1767-01/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"pm-01-out-"+r_string+".ly")
