import random
import abjad
import os


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
		block.items.append(r'\include "../uv/lm-01-uv-'+str(i+1)+"-"+str(s[i])+r'.ly"')
	#block.items.append(r'\bar"||"')
	block.items.append(r'}')
	block.items.append(">>")
	block.items.append("%Lower voice part")
	block.items.append(r'\context Staff = "lower" \with { instrumentName = "Basse" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"cello" {')
	block.items.append(r'\include "../bassline_option.ly"')
	for i in range(m):
		block.items.append(r'\include "../lv/lm-01-lv-'+str(i+1)+"-"+str(s[i])+r'.ly"')
	#block.items.append(r'\bar"||"')
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
n_options = 9
n_measures = 16


sequence = import_random_sequence(n_measures,n_options)
print("Random sequence:",sequence)

s_string = ""
for i in range(n_measures):
	s_string+=str(sequence[i])
	if i<(n_measures-1):
		s_string+="-"

# Compile score with abjad
lilypond_file = abjad_make_score(sequence,n_measures)
abjad.show(lilypond_file, output_directory="./anon-ludus-1758/temp/")

#rename the file(s)
source_dir = './anon-ludus-1758/temp/'
target_dir = './anon-ludus-1758/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"lm-01-out-"+s_string+".ly")

