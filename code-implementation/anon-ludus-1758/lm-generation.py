#This script will assemble all the

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
		0,190,193,81,0,190,189,0,189],
	2: [114,103,113,190,73,113,117,113,
		0,24,107,117,113,105,111,0,114,
		83,190,189,107,108,107,108,107,117,
		190,0,111,111,185,189,190,20,
		190,0,189,114,190,0,185,
		77,190,84,77,81,185,
		193,107,78,193,193,185,193,
		0,83,195,103,190,78,195,
		83,78,185,190,78,190,0,195,
		0,190,195,0,0,0,78],

	3: [86,190,73,96,196,113,81,86,
		83,190,86,105,100,105,117,
		196,83,190,114,195,101,190,114,190,
		114,0,114,117,113,190,101,111,
		195,113,78,113,113,108,196,
		98,113,114,193,190,195,193,196,
		232,193,232,111,111,195,111,111,0,
		105,111,114,196,108,196,108,113,105,
		108,108,105,105,196,0,196,108,
		111,0,196,196,111,0,0,0,196],

	4: [77,77,198,198,107,77,77,0,198,
		198,198,77,77,103,198,105,108,
		107,108,108,0,193,98,196,
		107,19,108,113,107,193,
		111,95,0,198,198,111,
		193,108,102,102,198,195,73,
		196,102,0,193,105,185,193,105,
		196,195,193,81,81,185,73,185,
		107,195,73,185,185,185,73,
		0,61,73,0,0,73],
	# We reduced chords to the lower note (75/71 -> 71)
	5: [114,71,75,75,71,75,117,105,
		233,113,111,233,196,224,196,25,107,
		228,189,113,224,111,223,71,193,
		103,224,88,0,221,114,101,196,189,
		196,223,185,193,218,196,0,81,111,
		105,17,111,196,25,111,101,196,
		108,101,114,108,196,217,108,
		101,0,187,196,113,190,114,
		215,196,101,0,0,196,111,0,
		111,0,0,137,0,0,81,193],

	6: [107,108,107,107,77,107,198,107,107,
		103,19,111,105,198,105,77,117,
		98,185,233,198,198,105,185,196,
		185,91,101,230,107,107,103,
		103,0,98,107,98,226,
		103,103,196,111,105,114,198,
		189,224,196,196,78,189,
		107,189,196,100,78,195,195,
		195,83,195,78,78,108,223,78,
		78,0,190,78,190,195,190,218],

	7: [119,114,105,61,73,91,189,103,111,
		117,113,103,189,114,114,73,105,
		103,114,193,196,84,113,189,193,189,
		84,196,119,71,193,189,190,114,193,
		189,84,108,0,83,193,113,111,
		77,113,193,196,193,190,0,
		108,190,190,114,113,103,100,0,
		113,196,113,108,117,108,107,108,0,
		111,107,108,0,193,190,108,190,
		0,190,108,0,111,190,0,196],

	8: [0,198,0,185,113,
		198,0,0,44,0,0,
		0,0,51,113,0,185,198,
		198,0,51,0,198,51,198,213,
		193,226,0,198,213,226,223,51,
		215,185,224,193,233,215,224,213,
		193,217,0,223,185,213,217,
		223,215,185,213,0,221,51,
		215,213,221,217,0,51,
		0,51,0,217,51]




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


# Generation of pitch tables

def simplify_more(p):
	# Improvided version of simplify function in abjad
	#Input abjad.NamedPitch
	# transforms cf ->b and ff -> e

	p = p.simplify()
	# bs to c and bff to a
	if p._get_diatonic_pc_number() == 6:
		if p._get_alteration() == 1:
			p=p._apply_accidental(accidental="flat")
			p=abjad.NamedPitch(p+1)
		if p._get_alteration() == -2:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)
	# cf to b and cff to bf
	if p._get_diatonic_pc_number() == 0:
		if p._get_alteration() == -1:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)
		if p._get_alteration() == -2:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)
	# gf to fs
	if p._get_diatonic_pc_number() == 4:
		if p._get_alteration() == -1:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)
	# ff to e and fss to g
	if p._get_diatonic_pc_number() == 3:
		if p._get_alteration() == -1:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)
		if p._get_alteration() == 2:
			p=p._apply_accidental(accidental="flat")
			p=abjad.NamedPitch(p+1)
	# df to cs
	if p._get_diatonic_pc_number() == 1:
		if p._get_alteration() == -1:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)	
	# af to gs
	if p._get_diatonic_pc_number() == 5:
		if p._get_alteration() == -1:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)	
	# eff to d
	if p._get_diatonic_pc_number() == 2:
		if p._get_alteration() == -2:
			p=p._apply_accidental(accidental="sharp")
			p=abjad.NamedPitch(p-1)	
	return p

def make_chromatic_sequence(s,e,d):
	# s=start pitch, e=end pitch for the sequence
	# d=duration expressed as (x,y) pair according to Abjad notation

	pitches = []
	notes = []
	pitch = abjad.NamedPitch(s)
	note = abjad.Note(pitch,d)
	pitches.append(pitch)
	notes.append(note)
	while pitches[-1] < abjad.NamedPitch(e):
		pitch = pitches[-1] +1
		pitch = simplify_more(pitch)
		pitches.append(pitch)
		note = abjad.Note(pitch,d)
		notes.append(note)

	return notes

def generate_musical_tables():
	#this function generates the whole musical tables of pag. 6-7
	# with notes ranging from n.1 to 233 
	n = 1
	table_m = []
	#Violin pitches
	# half notes:
	notes = make_chromatic_sequence("g","b''",(1,2))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
	#dotted half notes:
	notes = make_chromatic_sequence("g","b''",(3,4))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
	# quarter notes:
	notes = make_chromatic_sequence("g","b''",(1,4))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 80 :
			table_m.append([n,abjad.Note("ds'4")])
			n+=1

	# eight notes:
	notes = make_chromatic_sequence("g","b''",(1,8))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 109 :
			table_m.append([n,abjad.Note("ds'8")])
			n+=1
		if n == 116 :
			table_m.append([n,abjad.Note("af''8")])
			n+=1

	#Bass pitches
	#half notes
	notes = make_chromatic_sequence("c,","d'",(1,2))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 135 :
			table_m.append([n,abjad.Note("ds2")])
			n+=1
	# dotted half notes:
	notes = make_chromatic_sequence("c,","d'",(3,4))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 163 :
			table_m.append([n,abjad.Note("ds2.")])
			n+=1
	# quarter notes:
	notes = make_chromatic_sequence("c,","d'",(1,4))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 191 :
			table_m.append([n,abjad.Note("ds4")])
			n+=1
	# eight notes:
	notes = make_chromatic_sequence("c,","d'",(1,8))
	for i in range(len(notes)):
		table_m.append([n,notes[i]])
		n+=1
		if n == 219 :
			table_m.append([n,abjad.Note("ds8")])
			n+=1

	#adding rests
	table_m.append([n,abjad.Rest('r4')])
	n+=1
	table_m.append([n,abjad.Rest('r8')])

	#Show tables
	#print("Musical table:",table_m)
	return table_m

def generate_measure(c,table,m,v_count):
	# This function generates a musical measure given the 
	# choice \in {1,9} and the correspondent table (measure,part,mode)
	# m = musical table as imput
	# v_count is the boundary between violin and bass
	
	#Generate sequence of integers according to the "snake" method in the introduction

	i = c 
	sequence = []
	while i < len(table):
		sequence.append(table[i])
		i+=9

	print("Generated sequence:",sequence)

	#generate staff according to sequence

	staff = [ abjad.Staff() for _ in range(2)]

	for i in range(len(sequence)):
		#violin part
		if sequence[i] == 0:
			print("zero")

		elif (sequence[i] <= v_count) and (sequence[i] >0):
			staff[0].append(m[sequence[i]-1][1])
			#print("last note:",staff[0][-1])
			#bass part (all rest go to the bass)
		else:
			staff[1].append(m[sequence[i]-1][1])
			#print("last note:",staff[1][-1])

	#print("Violin:",staff[0])
	#print("Bass:",staff[1])

	return staff,sequence

def make_subtitle(s):
	# Generates a subtitle to be appended in the header of the lilypond file
    string = [str(_) for _ in s]
    string = "-".join(string)
    string = f"[{string}]"
    string = r'\header { piece = \markup "' + string + '" }'
    string += "\n"
    return string

musical_table = generate_musical_tables()
violin_count = 119

uvpath="./uv/lm-01-uv-"
lvpath="./lv/lm-01-lv-"

for i in range(8):
	for j in range(9):
		measure,sequence = generate_measure(j,table_dM_part1[i+1],musical_table,violin_count)

		# Write part files
		with open(uvpath+str(i+1)+"-"+str(j+1)+".ly","w+") as f:
			f.writelines(str(measure[0])[7:-2])
			f.close()
		with open(lvpath+str(i+1)+"-"+str(j+1)+".ly","w+") as f:
			f.writelines(str(measure[1])[7:-2])
			f.close()


		# Assemble parts into lilypond code:
		with open("./lm-01-"+str(i+1)+"-"+str(j+1)+".ly","w+") as f:
			s1=open("layout-part1.txt")
			s2=open("layout-part2.txt")
			s5=open("layout-part5.txt")
			f.writelines(make_subtitle(sequence))
			f.writelines(s1)
			f.writelines(r'\include "'+uvpath+str(i+1)+"-"+str(j+1)+r'.ly"')
			f.writelines(s2)
			f.writelines(r'\include "'+lvpath+str(i+1)+"-"+str(j+1)+r'.ly"')
			f.writelines(s5)
			f.close()


