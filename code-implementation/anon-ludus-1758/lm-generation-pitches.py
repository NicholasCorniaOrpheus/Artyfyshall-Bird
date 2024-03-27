import abjad

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




n = 2
staff = [abjad.Staff() for _ in range(n)]

start_note = "c,"
end_note = "d'"
duration = (1,2)

sequence = make_chromatic_sequence(start_note,end_note,duration)

print("sequence:",sequence)

for i in range(len(sequence)):
	staff[0].append(sequence[i])

abjad.attach(abjad.Clef("bass"),staff[0][0])

staff[0].append(abjad.Rest('r4'))

abjad.show(staff[0])