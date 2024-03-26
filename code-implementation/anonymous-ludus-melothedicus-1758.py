import random
import abjad
import os

# Measure number 1-8 (first and second part)
# each measure has a choice of digits.
# WARNING: the reading order of the tables follows the analogy with a snake (left-right, then right-left)
# and empty spaces are ignored.

table_dM_part1 = {
	1: [66,96,103,218,190,96,108,0,78,
		218,100,108,221,78,108,103,108,
		218,221,190,0,73,195,103,
		190,111,221,0,103,190,195,108,
		100,108,83,108,78,108,113,108,
		108,190,113,190,111,195,195,
		117,111,190,195,195,190,195,81,113,
		190,113,108,96,111,84,113,189,
		117,84,189,111,91,114,193,114,
		0,190,193,81,0,190,189,0,189]


}

table_am_part1 = {
	1: [103,81,213,213,15,213,81,86,
		213,105,213,86,215,213,81,213,213,
		215,129,215,73,81,215,215,215,73,
		188,76,188,215,188,82,73,188,
		215,86,78,73,188,73,
		188,188,190,82,81,187,190,
		82,108,190,82,73,188,190,0,82,
		190,190,0,190,82,190,108,0,0,
		0,112,0,0,0,0,112]

}

measure_sequences = []
for i in range(9):
	sequence = []
	j = i
	while j < len(table_dM_part1[1]):
		sequence.append(table_dM_part1[1][j])
		j+=9
	measure_sequences.append(sequence)

print(measure_sequences)

def import_random_sequence(m,o):
	#Generate random sequence given measures and options
	s = []
	for i in range(m):
		s.append(random.choice(range(1,o)))
	return s

def make_subtitle(s):
	# Generates a subtitle to be appended in the header of the lilypond file
    string = [str(_) for _ in s]
    string = "-".join(string)
    string = f"[{string}]"
    string = r'\header { piece = \markup "' + string + '" }'
    string += "\n"
    return string

def abjad_make_score(s,m):
	# s is the random sequence
	# Input array of include files, according to measure and voice
	# number of measures  m, set of results to generate subtitle.
	# Paper settings, with language, version and header:
	papersettings = r"""\include "../paper_settings.ly" """
	subtitle = make_subtitle(s)
	# Generating Score block
	block = abjad.Block("score")
	block.items.append("<<")
	block.items.append(r'\new ChoirStaff')
	block.items.append("<<")
	block.items.append("%Upper voice part")
	block.items.append(r'\context Staff = "upper" \with { instrumentName = "Dessus" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"violin" {')
	block.items.append(r'\include "../voice_option.ly"')
	for i in range(m):
		block.items.append(r'\include "../uv/lm-uv-'+str(i+1)+"-"+str(s[i])+r'.ly"')
	block.items.append(r'\bar"||"')
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append("%Lower voice part")
	block.items.append(r'\context Staff = "lower" \with { instrumentName = "Basse" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"cello" {')
	block.items.append(r'\include "../bassline_option.ly"')
	for i in range(m):
		block.items.append(r'\include "../lv/lm-lv-'+str(i+1)+"-"+str(s[i])+r'.ly"')
	block.items.append(r'\bar"||"')
	block.items.append(r'}')
	block.items.append(">>")
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

# Musical table 9 options for 6 measures
options = 9
measures = 16

# Generate a measure x options table to call out musical fragments
table = [[0]*options for _ in range(measures)]

sequence = import_random_sequence(measures,options)
print("Random sequence:",sequence)

s_string = ""
for i in range(measures):
	s_string+=str(sequence[i])
	if i<(measures-1):
		s_string+="-"

# Compile score with abjad
#lilypond_file = abjad_make_score(sequence,measures)
#abjad.show(lilypond_file, output_directory="./anon-ludus-1758/temp/")

#rename the file(s)
source_dir = './anon-ludus-1758/temp/'
target_dir = './anon-ludus-1758/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"lm-out-"+s_string+".ly")

