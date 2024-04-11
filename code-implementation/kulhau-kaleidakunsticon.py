import random 
import abjad 
import shutil
import os

# Transcribe table
# Transcribe bars using python script (pm-01-generation)
# assemble measures and generate scores

def abjad_appendmeasure_fragment(measure_number,voice_number):
	if voice_number == 0:
		input_measure = r'\include "../rh/kk-01-rh-'+str(measure_number)+r'.ly"'
	if voice_number == 1:
		input_measure = r'\include "../lh/kk-01-lh-'+str(measure_number)+r'.ly"'
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
print ("List of possible fragments:")
# measure choices
measure_list = [
["A2","A3","A4","A5","A6","A7","A8","A9","A10","A11","A12",],
["B2","B3","B4","B5","B6","B7","B8","B9","B10","B11","B12",],
["C2","C3","C4","C5","C6","C7","C8","C9","C10","C11","C12",],
["D2","D3","D4","D5","D6","D7","D8","D9","D10","D11","D12",],
["E2","E3","E4","E5","E6","E7","E8","E9","E10","E11","E12",],
["F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12",],
["G2","G3","G4","G5","G6","G7","G8","G9","G10","G11","G12",],
["H2","H3","H4","H5","H6","H7","H8","H9","H10","H11","H12",],
["I2","I3","I4","I5","I6","I7","I8","I9","I10","I11","I12",],
["J2","J3","J4","J5","J6","J7","J8","J9","J10","J11","J12",],
["K2","K3","K4","K5","K6","K7","K8","K9","K10","K11","K12",],
["L2","L3","L4","L5","L6","L7","L8","L9","L10","L11","L12",],
["M2","M3","M4","M5","M6","M7","M8","M9","M10","M11","M12",],
["N2","N3","N4","N5","N6","N7","N8","N9","N10","N11","N12",],
["O2","O3","O4","O5","O6","O7","O8","O9","O10","O11","O12",],
["P2","P3","P4","P5","P6","P7","P8","P9","P10","P11","P12",],
["Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10","Q11","Q12",],
["R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12",],
["S2","S3","S4","S5","S6","S7","S8","S9","S10","S11","S12",],
["T2","T3","T4","T5","T6","T7","T8","T9","T10","T11","T12",],
["U2","U3","U4","U5","U6","U7","U8","U9","U10","U11","U12",],
["V2","V3","V4","V5","V6","V7","V8","V9","V10","V11","V12",]
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
abjad.show(lilypond_file, output_directory="./kulhau-1820/temp/")

#rename the file(s)
source_dir = './kulhau-1820/temp/'
target_dir = './kulhau-1820/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"kk-01-out-"+r_string+".ly")
