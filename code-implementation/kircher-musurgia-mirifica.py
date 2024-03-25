import abjad
import os

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
		pitches.append(pitch)
	return pitches



# Setting the mode
mode_name = "Hypo-mixolydius"
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
]
]
	
} 

notae_temporis = {
	
4: [
[
[(3,2),(1,2),(1,2),(1,2),(1,1),(1,1)]
]

]

}

#Generating cantus, altus, tenor and bassus staves
n = 4
voice = [abjad.Staff() for _ in range(n)]

for i in range(len(pinax_simplex[4][0][0])):
	for j in range(n):
		if j == 0:
			#cantus
			pitch = mode[pinax_simplex[4][1][j][i]-1] +"P8"
			note = abjad.Note(pitch,notae_temporis[4][0][0][i])
			voice[0].append(note)
		if j == 3:
			#bassus
			if pinax_simplex[4][1][j][i] == 8:
				pitch = mode[pinax_simplex[4][1][j][i]-1] -"P8"
				note = abjad.Note(pitch,notae_temporis[4][0][0][i])
				voice[j].append(note)
			else: 
				pitch = mode[pinax_simplex[4][1][j][i]-1]
				note = abjad.Note(pitch,notae_temporis[4][0][0][i])
				voice[j].append(note)
		if (j>0 and j<3):
			#altus, tenor
			pitch = mode[pinax_simplex[4][1][j][i]-1]
			note = abjad.Note(pitch,notae_temporis[4][0][0][i])
			voice[j].append(note)

abjad.attach(abjad.Clef("treble"),voice[0][0])
abjad.attach(abjad.Clef("treble_8"),voice[1][0])
abjad.attach(abjad.Clef("treble_8"),voice[2][0])
abjad.attach(abjad.Clef("bass"),voice[3][0])

score =abjad.Score(voice)
abjad.show(score)











