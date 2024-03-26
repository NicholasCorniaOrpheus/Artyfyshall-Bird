import abjad
import os
import random

mode_to_intervals = {
	# modern harmonic minor on d
	"Dorius": "M2 m2 M2 M2 m2 m3 m2",
	# modern harmonic minor on g
	"Hypo-dorius": "M2 m2 M2 M2 m2 m3 m2",
	# modern harmonic minor on a
	"Phrygius": "M2 m2 M2 M2 m2 m3 m2", 
	# modern phrygian dominant scale with major 3rd on e
	"Hypo-phrygius": "m2 m3 m2 M2 m2 M2 M2",
	# modern Locrian mode on b
	"Lydius": "m2 M2 M2 m2 M2 M2 M2",
	# modern Lydian mode on f
	"Hypo-lydius": "M2 M2 M2 m2 M2 M2 m2",
	# modern Ionian mode (major scale) on g
	"Mixolydius": "M2 M2 m2 M2 M2 M2 m2",
	# modern Ionian mode (major scale) on c
	"Hypo-mixolydius": "M2 M2 m2 M2 M2 M2 m2",
	# equal to Dorius
	"Ionius": "M2 m2 M2 M2 m2 m3 m2",
	# modern Aeolian mode (natural minor) on a
	"Hypo-ionius": "M2 m2 M2 M2 m2 M2 M2",
	# equal to Hypo-mixolydius
	"Iastius": "M2 M2 m2 M2 M2 M2 m2",
	# equal to Hypo-lydius
	"Hypo-iastius": "M2 M2 M2 m2 M2 M2 m2"

}

tonics = {
	"Dorius": "d",
	"Hypo-dorius": "g",
	"Phrygius": "a",
	"Hypo-phrygius": "e",
	"Lydius": "b",
	"Hypo-lydius": "f",
	"Mixolydius": "g",
	"Hypo-mixolydius": "c",
	"Ionius": "d",
	"Hypo-ionius": "a",
	"Iastius": "c",
	"Hypo-iastius": "f"
}

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

def make_scale(t,intervals):
	#Input tonic note as string
	# intervals as string
	#split string
	intervals = intervals.split()
	pitches = []
	pitch = abjad.NamedPitch(t)
	pitches.append(pitch)
	for interval in intervals:
		pitch = pitch + interval
		pitches.append(simplify_more(pitch))
	return pitches



# Setting the mode
#mode_name = "Hypo-mixolydius"
mode_name = "Phrygius"
mode = make_scale(tonics[mode_name],mode_to_intervals[mode_name])

print("Mode:",mode)

# Setting the poetic meter
meter = ""


# Mapping Kircher's digits to notes

pinax_simplex = {

4: [
[
[5,5,3,2,3,3],[8,7,5,7,7,7],[3,2,3,4,5,5],[8,5,8,7,3,3]
],
[
[5,5,5,5,5,5],[8,8,8,7,8,8],[3,3,3,2,3,3],[1,1,1,5,1,1]
],
[
[8,2,3,6,5,5],[5,7,8,3,7,8],[3,4,8,4,2,3],[8,7,6,4,5,1]
],
[
[3,2,3,2,1,7],[8,7,5,7,5,5],[5,5,5,4,3,2],[1,5,3,4,8,5]
],
[
[3,2,3,4,5,5],[8,7,8,2,7,7],[5,5,5,2,3,3],[8,5,1,7,3,3]
],
[
[5,5,5,4,5,5],[8,8,7,8,7,8],[3,3,2,1,2,3],[1,1,5,6,5,1]
],
[
[5,5,5,5,5,5],[8,8,8,7,8,8],[3,3,3,2,3,3],[8,8,8,5,8,8]
],
[
[5,5,5,5,4,4],[7,7,7,7,7,7],[3,3,3,3,2,2],[3,3,3,3,7,7]
],
[
[5,5,4,4,5,5],[7,7,6,8,7,8],[3,3,1,1,2,3],[3,3,4,6,5,1]
],
[
[3,4,5,4,2,3],[8,7,7,6,5,5],[5,4,3,8,7,8],[1,2,3,4,5,1]
],
]
	
} 

notae_temporis = {
	
4: [
[
[(3,2),(1,2),(1,2),(1,2),(1,1),(1,1)]
],
[
[(3,4),(1,4),(1,2),(1,2),(1,1),(1,1)]
],
[
[(1,2),(1,2),(1,2),(1,2),(1,1),(1,1)]
],
[
[(1,4),(1,4),(1,4),(1,4),(1,1),(1,1)]
],
[
[(3,8),(1,8),(1,4),(1,4),(1,2),(1,2)]
],
[
["r2",(1,1),(1,2),(1,2),(1,2),(1,1),(1,1)]
],
]

}

#Generating cantus, altus, tenor and bassus staves
n = 4
voice = [abjad.Staff() for _ in range(n)]

choice = random.choice(range(0,9))

print ("random choice:",choice)

for i in range(len(pinax_simplex[4][0][0])):
	for j in range(n):
		if j == 0:
			#cantus
			pitch = mode[pinax_simplex[4][choice][j][i]-1] +"P8"
			note = abjad.Note(pitch,notae_temporis[4][0][0][i])
			voice[0].append(note)
		if j == 3:
			#bassus
			if pinax_simplex[4][1][j][i] == 8:
				pitch = mode[pinax_simplex[4][choice][j][i]-1] -"P8"
				note = abjad.Note(pitch,notae_temporis[4][0][0][i])
				voice[j].append(note)
			else: 
				pitch = mode[pinax_simplex[4][choice][j][i]-1]
				note = abjad.Note(pitch,notae_temporis[4][0][0][i])
				voice[j].append(note)
		if (j>0 and j<3):
			#altus, tenor
			pitch = mode[pinax_simplex[4][choice][j][i]-1]
			note = abjad.Note(pitch,notae_temporis[4][0][0][i])
			voice[j].append(note)

abjad.attach(abjad.Clef("treble"),voice[0][0])
abjad.attach(abjad.Clef("treble_8"),voice[1][0])
abjad.attach(abjad.Clef("treble_8"),voice[2][0])
abjad.attach(abjad.Clef("bass"),voice[3][0])

score =abjad.Score(voice)
abjad.show(score)











