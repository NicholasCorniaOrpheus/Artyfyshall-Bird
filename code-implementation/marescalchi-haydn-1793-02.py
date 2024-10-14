import random 
import abjad 
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../rh/gf-02-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../lh/gf-02-lh-'+str(measure_number)+r'.ly"'
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
	block.items.append(r'\mark \markup{Prima parte del trio}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			block.items.append(r'\bar"||"')
			#block.items.append(r'\break')
			block.items.append(r'\mark \markup{Seconda parte del trio}')
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
# Trio Part 1
[72,56,75,40,83,18],
[6,82,39,73,3,45],
[59,42,54,16,28,62],
[25,74,1,68,53,38],
[81,14,65,29,37,4],
[41,7,43,55,17,27],
[89,26,15,2,44,52],
[13,71,80,61,70,94],
# Trio Part 2
[36,76,9,22,63,11],
[5,20,34,67,85,92],
[46,64,93,49,32,24],
[79,84,48,77,96,86],
[30,8,69,57,12,51],
[95,35,58,87,23,60],
[19,47,90,33,50,78],
[66,88,21,10,91,31]

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
abjad.show(lilypond_file, output_directory="./marescalchi-haydn-1793-02/temp/")

#rename the file(s)
source_dir = './marescalchi-haydn-1793-02/temp/'
target_dir = './marescalchi-haydn-1793-02/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"gf-02-out-"+r_string+".ly")
