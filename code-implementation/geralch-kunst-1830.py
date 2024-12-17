import random 
import abjad 
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../rh/st-01-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../lh/st-01-lh-'+str(measure_number)+r'.ly"'
	return input_measure

def abjad_make_include_strings(m,number_voices):
	# Input : result array of measures selected out of the random choice.
	# number of voices, in this case 2 (right and left hand)
	#generate empty voices x len_measures
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
	# number of measures, set of results choices to generate subtitle.
	# Paper settings, with language, version and header:
	first_part_length = 16
	papersettings = r"""\include "../paper_settings.ly" """
	subtitle = make_subtitle(choices)
	# Generating Score block
	block = abjad.Block("score")
	block.items.append("<<")
	block.items.append("%Piano part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Clav." midiInstrument=#"piano"}')
	block.items.append("<<")
	block.items.append(r'\context Staff = "rh" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r'\mark \markup{}')
	for i in range(include_length):
		block.items.append(include_s[0][i])
		if i ==(first_part_length-1):
			#block.items.append(r'\bar":|.|:"')
			#block.items.append(r'\break')
			block.items.append(r'\mark \markup{}')
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
#print ("List of possible fragments:")
# measure choices
measure_list = [
# Esten Theil (8 bars)
#1ten Wurfel
[[65,14],[77,109],[15,87],[89,12],[40,98],[8,88]],
#2ten W.
[[29,17],[9,28],[55,95],[75,3],[36,10],[101,32]],
#3ten W.
#4ten W.


#Zweiten Theil (8 bars)
#1ten Wurfel
#2ten W.
#3ten W.
#4ten W.
#Trio 1 (8 bars)
#1ten Wurfel
#2ten W.
#3ten W.
#4ten W.

#Trio 2 (8 bars)
#1ten Wurfel
#2ten W.
#3ten W.
#4ten W.

]



result =[]
r_string = ""
for measure in measure_list:
	dice_roll = random.randint(1,6)
	for bar in measure[dice_roll-1]:
		result.append(bar)
		r_string+=str(bar)
		if measure != measure_list[-1]:
			r_string+="-"


print ("Sampled fragments:")
print (result)
#print (r_string)

result_strings = abjad_make_include_strings(result,2)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./gerlach-1830/temp/")

#rename the file(s)
source_dir = './gerlach-1830/temp/'
target_dir = './gerlach-1830/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"kk-01-out-"+r_string+".ly")
