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
[44,197,42,40,217,99,19,252,257,77,142],
[148,10,206,165,109,6,39,214,88,224,207],
[5,210,69,114,132,8,167,129,177,131,28],
[200,118,143,159,263,83,53,178,112,68,246],
[38,168,212,204,57,255,180,261,240,21,61],
[97,54,216,153,11,144,90,194,155,56,174],
[221,106,63,254,79,81,94,64,199,236,27],
[190,176,92,16,23,173,242,26,138,51,202],
[231,135,239,146,84,74,196,75,244,154,127],
[25,100,192,17,85,133,71,139,87,121,59],
[34,141,243,9,91,260,7,86,219,125,181],
#seconda parte
[223,238,256,46,49,107,32,52,137,189,76],
[122,119,134,48,62,55,253,183,191,184,60],
[140,215,4,113,234,247,78,166,182,29,98],
[3,73,120,20,58,203,171,89,36,130,220],
[235,175,41,233,164,227,50,188,43,158,169],
[198,201,80,186,103,96,264,245,108,208,172],
[222,104,258,145,205,15,67,150,93,149,66],
[72,229,250,185,116,13,33,2,241,230,30],
[211,126,115,123,259,128,37,262,1,251,160],
[157,35,124,105,213,179,110,111,225,226,136],
[102,218,170,24,22,18,232,101,14,82,65],
[248,31,117,95,193,151,228,195,163,187,147],
[47,152,237,45,12,162,161,209,70,156,249]
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
