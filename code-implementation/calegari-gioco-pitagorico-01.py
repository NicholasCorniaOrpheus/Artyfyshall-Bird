import random
import abjad
import os

# ABJAD FUNCTIONS

def abjad_appendmeasure_fragment(measure_number,voice_number):
	#Input: measure number, voice number (0=singing, 1=right hand, 2=left hand)
	if voice_number == 0:
		input_measure = r'\include "../voice/gp-01-vc-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../rh/gp-01-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 2:
		input_measure = r'\include "../lh/gp-01-lh-'+str(measure_number)+r'.ly"'
	return input_measure

def abjad_make_include_strings(m,number_voices):
	# Input : result array of measures selected out of the random choice.
	# number of voices, in this case 3 (singing, right and left hand)
	include_strings = [ [0]*len(m) for _ in range(number_voices)]
	print (include_strings)
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
	papersettings = r"""\include "../paper_settings.ly" """
	subtitle = make_subtitle(choices)
	# Generating Score block
	block = abjad.Block("score")
	block.items.append("<<")
	block.items.append("%Voice part")
	block.items.append(r'\context Staff = "voice" \with { instrumentName = "Voice" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"voice oohs" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[0][i])
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append("%Piano part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Piano"}')
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
	block.items.append(r'\bar":|."')
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
[150,71,81,140,180],
[142,89,13,184,34],
[18,149,111,55,59],
[85,137,10,2,98],
[62,113,96,9,141],
[3,56,154,175,166],
[152,5,27,73,78],
[94,132,179,90,143],
#seconda parte
[25,19,178,176,30],
[120,171,99,17,177],
[187,88,185,95,101],
[102,28,97,195,11],
[33,126,23,163,32],
[157,35,147,6,165],
[189,65,50,131,26],
[108,64,117,144,123],
[146,20,125,53,190],
[148,61,159,169,69]
]



# Generating subtitle and random sequence
result =[]
r_string = ""
for i in range(len(measure_list)):
	result.append(random.choice(measure_list[i]))
	#result.append(measure_list[i][4])
	r_string+=str(result[i])
	if i<(len(measure_list)-1):
		r_string+="-"

print ("Sampled fragments:")
print (result)




# Compile score with abjad

result_strings = abjad_make_include_strings(result,3)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./calegari-1801-01/temp/")

#rename the file(s)
source_dir = './calegari-1801-01/temp/'
target_dir = './calegari-1801-01/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"gp-01-out-"+r_string+".ly")
