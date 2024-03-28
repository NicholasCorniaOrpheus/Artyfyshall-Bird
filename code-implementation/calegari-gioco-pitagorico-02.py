import random
import abjad 
import os


# ABJAD FUNCTIONS

def abjad_appendmeasure_fragment(measure_number,voice_number):
	#Input: measure number, voice number (0=singing, 1=right hand, 2=left hand)
	if voice_number == 0:
		input_measure = r'\include "../vc1/gp-02-vc1-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../vc2/gp-02-vc2-'+str(measure_number)+r'.ly"'
	if voice_number == 2:
		input_measure = r'\include "../rh/gp-02-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 3:
		input_measure = r'\include "../lh/gp-02-lh-'+str(measure_number)+r'.ly"'
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
	block.items.append(r'\new ChoirStaff')
	block.items.append("<<")
	#Voice 1
	block.items.append("%Voice1 part")
	block.items.append(r'\context Staff = "voiceone" \with { instrumentName = "Canto Primo" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"voice oohs" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[0][i])
	block.items.append(r'}')
	block.items.append(">>")
	#Voice 2
	block.items.append("%Voice2 part")
	block.items.append(r'\context Staff = "voicetwo" \with { instrumentName = "Canto Secondo" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"voice oohs" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(include_length):
		block.items.append(include_s[1][i])
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append(">>")

	block.items.append("%Piano part")
	block.items.append(r'\context PianoStaff \with { instrumentName = "Piano-Forte"}')
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
[44,197,42,40,217],
[148,10,206,165,109],
[5,210,69,114,132],
[200,118,143,159,263],
[38,168,212,204,57],
[97,54,216,153,11],
[221,106,63,254,79],
[190,176,92,16,23],
[231,135,239,146,84],
[25,100,192,17,85],
[34,141,243,9,91],
#seconda parte
[223,238,256,46,49],
[122,119,134,48,62],
[140,215,4,113,234],
[3,73,120,20,58],
[235,175,41,233,164],
[198,201,80,186,103],
[222,104,258,145,205],
[72,229,250,185,116],
[211,126,115,123,259],
[157,35,124,105,213],
[102,218,170,24,22],
[248,31,117,95,193],
[47,152,237,45,12]
]



#Generating Subtitle
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
#outputstring = "gp-01-out"+str(subtitle)+".ly"
result_strings = abjad_make_include_strings(result,4)
lilypond_file = abjad_make_score(result_strings,len(measure_list),result)
abjad.show(lilypond_file, output_directory="./calegari-1801-02/temp/")

#rename the file(s)
source_dir = './calegari-1801-02/temp/'
target_dir = './calegari-1801-02/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"gp-02-out-"+r_string+".ly")
