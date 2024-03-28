import random
import abjad
import os

#Algorithmic implementation

#Part one - Triangle

def import_random_sequence(n):
	s = []
	for i in range(n):
		s.append(random.choice(range(1,10000)))
	return s	

def triangle_modulo9(s,n):
	#first step
	for i in range(n):
		s[i] = s[i] % 9
	# iteration to randomize sequence
	#create empty triagle
	t = [["null"] * n for _ in range(n)]
	for k in range(n):
		for i in range(n-k):
			t[k][i+k]=s[i]
		for i in range(n-k-1):
			s[i]+=s[i+1]
			s[i]= s[i] % 9
		#print(t)
	return t

def mote1_generation(t,n):
	#Generation of first columns A,B,C,D,E,F from triangle (in temp8)
	counti = 0
	countj = 0
	# first columns of A,B,C,D,E,F
	temp8 = [ [0] * 8 for _ in range(6)]
	# reorganization of triangle for parallelogram
	temp = [ [0] * 10 for _ in range(10)]
	#last column of temp (was not working in one for loop)
	for j in range(n):
		temp[n-1][j]=t[n-1][j]
	# other columns
	for i in range(n):
		for j in range(n):
			temp[i][j]=t[n-j-1][n-i-1]
			#print (i,j)
			if temp[i][j] != "null":
				#print(counti,countj)
				if counti <=5 :
					#go to new column
					if countj<=7:
						#fill the current column
						temp8[counti][countj]=temp[i][j]
						#print ("check",counti,countj,i,j,temp8)
						countj+=1
					elif counti<5:
						countj=0
						counti+=1
						temp8[counti][countj]=temp[i][j]
						#print ("check new column",counti,countj,i,j,temp8)
						countj+=1
					else:
						#print('Temp:',temp)
						#print("Temp8:",temp8)
						return temp8
				
def mote_generation(m1):
	a=mote1[0]
	b=mote1[1]
	c=mote1[2]
	d=mote1[3]
	e=mote1[4]
	f=mote1[5]
	# MOTE parallelogram
	mote = [ [0]*16 for _ in range(8)]
	for i in range(16):
		if i==0:
			for j in range(8):
				mote[j][i]=m1[0][j]
		else:
			for j in range(8):
				modi = i % 3
				k = int((i+2)/3)
				#print (i,j,modi)
				if modi == 1:
					#first column of the block
					mote[j][i]=m1[k][j]
					#print ("modi=1:",mote[j][i])
				elif modi == 2:
					# second column of the block
					mote[j][i]=(m1[k][j]*3+m1[0][j]) % 9
					#print ("modi=2:",mote[j][i])
				elif modi ==0:
					mote[j][i]=mote[j][i-1]+mote[j][0]+9*(int(i/3))
					#print ("modi=3:",mote[j][i])
					#print(mote[j][i-1],mote[j][0],9*(int(i/3)))
	return mote

def generation_walse_tables(m):
	#Prima, Seconda and Terza Parte Fig.3-4-5
	parte1 = [ [0]*6 for _ in range(8)]
	parte2 = [ [0]*6 for _ in range(8)]
	parte3 = [ [0]*6 for _ in range(8)]
	for i in range(8):
		for j in range(6):
			if j==0:
				parte1[i][j]=m[i][j]
				parte2[i][j]=m[i][j]+9
				parte3[i][j]=m[i][j]+18
			else:
				k=j*3
				#print(j,k)
				parte1[i][j]=m[i][k]
				parte2[i][j]=parte1[i][j]
				parte3[i][j]=parte1[i][j]
	return parte1,parte2,parte3

def search_letter_tabella2(x,row,t2):
	row_t2 = t2[row]
	#print("Current value:",x)
	#print("Current row:",row_t2)
	for i in range(5):
		for j in range(3):
			#print("i,j,row_t2[i][j]",i,j,row_t2[i][j])
			if row_t2[i][j] == x:
				return i

def generate_parte_string(p,t2):
	#Input: parte array, tabella2 list
	# Going through the parte matrix, excluding the column A
	parte_s = [[0]*5 for _ in range(8) ]
	# Record A column
	column_a = [0 for i in range(8)]
	for i in range(8):
		column_a[i]=p[i][0]
	# Record rest of the matrix	
	for i in range(8):
		for j in range(5):
				#print("current value parte matrix:",p[i][j+1])
				parte_s[i][j]=search_letter_tabella2(p[i][j+1],column_a[i],t2)
				#print("curr. output:",parte_s[i][j])

	return parte_s,column_a

def appendmeasure_fragment(c,m,tmblock):
	# Input: Column(B=0-F=4 in digits),current_measure, tabella musicale_currentrow
	# Convert the 3-8 and x strings 
	#Selected fragment:
	out = tmblock[c][m]
	if out =="3":
		#print("appended measure:",out)
		return r"""\time 3/8"""
	elif out =="8":
		return r"""\time 3/8"""
	elif out =="x":
		#print("appended measure:",out)
		return r""" """
	else:
		#print("appended measure:",out)
		return out	 
	
	

def generate_fragment_list(ps,cla,tm,choices,parte_name):
	#Input parte_string (B-F to lookup), column_a (A row to lookup), tabella musicale
	#Choices from the original sequence (mod 9)
	#number of the parte: 1,2 or 3

	#Generate unique string filename:
	r_string = ""
	for i in range(len(choices)):
		r_string+=str(choices[i])
		if i<(len(choices)-1):
			r_string+="-"

	#The musical output will be a lilypond file with the encoded symbols:
	#music_output = [[0]*5 for _ in range(8) ]
	file_name = "./mangeruva-1823/parte"+str(parte_name)+"/"+"mw-0"+str(parte_name)+"-"+str(r_string)+".ly"
	with open(file_name,"w+") as music_output:
		# Traslation parte_string into symbols
		for i in range(8):
			tm_row = tm[cla[i]]
			print ("Current column value:",cla[i])
			print ("Current tabella:",tm_row)
			for j in range(5):
				print ("Current part string:",ps[i][j])
				music_output.writelines(appendmeasure_fragment(ps[i][j],i,tm_row)+'\n')	
	return music_output



def include_strings(s,row,tm):
	#Input: string choices, A row, Tabella Musicale 
	include_strings = [ 0 for i in range(s) ]
	print (include_strings)
	for i in range(len(s)):
		for j in range(number_voices):
			include_strings[j][i]=abjad_appendmeasure_fragment(row,s[i],j)
	return include_strings

def make_subtitle(choices):
	#Choices is here the original sequence mod 9
    string = [str(_) for _ in choices]
    string = "-".join(string)
    string = f"[{string}]"
    string = r'\header { piece = \markup "' + string + '" }'
    string += "\n"
    return string	

def abjad_make_score(include_length,choices,choices_string):
	# Music fragments, its range, and the initial sequence mod 9
	papersettings = r"""\include "../paper_settings.ly" """
	subtitle = make_subtitle(choices)
	block = abjad.Block("score")
	block.items.append("<<")
	block.items.append("%Voice part: Prima parte")
	block.items.append(r'\context Staff = "voice" \with { instrumentName = "Voice" }')
	block.items.append("<<")
	block.items.append(r'\set Staff.midiInstrument =#"voice oohs" {')
	block.items.append(r'\include "../voice_option.ly"')
	block.items.append(r"""\mark \markup{"Prima Parte"} """)
	block.items.append(r"""\bar".|:" """)
	file_name=r"""\include "../parte1/mw-01-"""+choices_string+r""".ly" """
	block.items.append(file_name)
	block.items.append(r"""\bar":|.|:" """)
	block.items.append(r"""\break""")
	block.items.append(r"""\mark \markup{"Seconda Parte"} """)
	file_name=r"""\include "../parte2/mw-02-"""+choices_string+r""".ly" """
	block.items.append(file_name)
	block.items.append(r"""\bar":|.|:" """)
	block.items.append(r"""\break""")
	block.items.append(r"""\mark \markup{"Terza Parte"} """)
	file_name=r"""\include "../parte3/mw-03-"""+choices_string+r""".ly" """
	block.items.append(file_name)
	block.items.append(r"""\bar":|." """)
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

# Tabella 2 generation using dictionary

tabella2 = {1: [[20,23,26],[38,41,44],[11,14,17],[29,32,35],[47,50,53]],
			2: [[40,43,46],[22,25,28],[49,52,55],[31,34,37],[13,16,19]],
			3: [[33,36,39],[51,54,57],[24,27,30],[15,18,21],[42,45,48]],
			4: [[50,53,56],[32,35,38],[14,17,20],[41,44,47],[23,26,29]],
			5: [[25,28,31],[16,19,22],[43,46,49],[52,55,58],[34,37,40]],
			6: [[27,30,33],[18,21,24],[45,48,51],[54,57,60],[36,39,42]],
			7: [[17,20,23],[53,56,59],[26,29,32],[44,47,50],[35,38,41]],
			8: [[46,49,52],[28,31,34],[55,58,61],[37,40,43],[19,22,25]],
			9: [[57,60,63],[48,51,54],[21,24,27],[30,33,36],[39,42,45]],
			10: [[47,53,50],[29,35,32],[11,17,14],[38,44,41],[20,26,23]],
			11: [[13,19,16],[31,37,34],[49,55,52],[22,28,25],[40,46,43]],
			12: [[42,48,45],[15,21,18],[24,30,27],[51,54,57],[33,39,36]],
			13: [[23,29,26],[41,47,44],[14,20,17],[32,38,35],[50,56,53]],
			14: [[34,40,37],[52,58,55],[43,49,46],[16,19,22],[25,31,28]],
			15: [[18,24,21],[36,42,39],[54,60,57],[27,33,30],[45,51,48]],
			16: [[35,41,38],[44,50,47],[26,32,29],[53,59,56],[17,23,20]],
			17: [[28,34,31],[55,61,58],[46,52,49],[19,25,22],[37,43,40]],
			18: [[39,45,42],[30,36,33],[21,24,27],[48,54,51],[57,63,60]],
			19: [[17,14,11],[20,23,26],[32,29,35],[41,44,38],[47,50,53]],
			20: [[22,28,25],[31,34,37],[40,43,46],[49,52,55],[13,16,19]],
			21: [[33,36,39],[42,45,48],[51,54,57],[21,18,15],[30,27,24]],
			22: [[47,44,41],[56,53,50],[20,17,14],[29,26,23],[38,35,32]],
			23: [[58,55,52],[16,19,22],[28,25,31],[37,34,40],[46,43,49]],
			24: [[60,54,57],[51,45,48],[42,36,39],[33,27,30],[24,18,21]],
			25: [[47,50,44],[38,41,35],[29,32,26],[20,23,17],[53,56,59]],
			26: [[37,40,43],[31,28,34],[19,22,25],[55,58,61],[46,49,52]],
			27: [[30,33,36],[21,24,27],[57,60,63],[48,51,54],[39,42,45]]
			}

# Tavola musicale, music table with fragments encoded in lilypond notation, absolute pitch

tavola_musicale = {
1: [["8",r"""g''4 """,r"""d''16[e'']""",r"""\acciaccatura{c''8}b'8[a'16 b']""","x",r"""g''4 """,r"""d''16[cs''!] ""","x"],
[r"""c''4""",r"""e''8""",r"""\bar"|" """,r""" g'8 """,r"""\bar"|" ""","x",r""" f''16[d''] """,r"""\bar":|." """],
[r"""\clef "treble" """,r"""\bar"|" """, r"""\acciaccatura{e''8} d''16[cs''!]""","x",r"""c''4""","x",r"""\bar"|" """,r"""c''4"""],
["3","x",r""" f''16[a''16] ""","x",r"""  e''8 ""","x",r"""d''16[e'']""",r"""r8"""],
[r"""e''8""",r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""e''8""",r"""\bar"|" """,r""" \bar".|:" """]
],

#Mistake line 2, column B, measure 1 c''8 to quarter note
2: [[r"""c''4""",r"""e''8 """,r"""\bar"|" """,r"""c''8 """,r"""c''8 ""","x",r"""d''8 """,r"""\bar":|." """ ],
["8",r"""e''4""",r"""e''8""",r"""e''4""","x",r"""e''4""",r"""f''8""","x"],
[r""" g'16[c''] """,r""" \bar"|" ""","x",r""" \bar"|" """,r""" \bar"|" """,r"""e''8""",r""" \bar"|" """,r""" \bar".|:" """],
["3","x",r"""d''8""","x",r"""g'8""","x",r"""e''8""",r"""r8"""],
[r"""\clef "treble" """,r""" \bar"|" """,r"""f''8""","x",r"""c''8""","x",r""" \bar"|" """,r"""c''4"""]
],

#Mistake line 3, column F, measure 1 c''8 to quarter note
3: [["3","x",r""" a''16[f'']""","x",r"""f''8""",r"""e''8""",r"""d''8""",r"""r8"""],
[r"""c''16[e'']""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""c''8""",r"""\bar"|" """,r"""\bar".|:" """],
["8",r"""g''4""",r"""f''16[g''] """,r""" d''8[b'] ""","x",r""" e''8 """,r""" \acciaccatura{e''8}d''16[cs!''] ""","x"],
[r"""\clef "treble" """,r"""\bar"|" """,r"""\acciaccatura{g''8} f''16[e'']""","x",r"""f''8""","x",r"""\bar"|" """,r"""c''4"""],
[r"""c''4""",r"""e''8""",r"""\bar"|" """,r"""g'8""",r"""d''8 ""","x",r"""e''8""",r"""\bar":|." """]
],

4: [[r"""c''8[e'']""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""g''8""",r"""\bar"|" """,r"""\bar".|:" """],
["3","x",r"""e''16[c'']""",r"""b'16.[a'32]""",r"""f''8""",r"""e''8""",r"""g''8""",r"""r8"""],
[r"""\clef "treble" """,r"""\bar"|" """,r"""\acciaccatura{d''8} c''16[b'] ""","x",r"""f''16.[e''32] ""","x",r"""\bar"|" """,r"""c''4"""],
[r"""c''16.[b'32]""",r"""c''8[e'']""",r"""\bar"|" """,r"""g'8""",r"""a''8""","x",r"""b'8""",r"""\bar":|." """],
["8",r"""c''16.[b'32]""",r"""c''16[d'']""",r"""d''16.[c''32]""","x",r"""e''16.[d''32]""",r"""d''8""","x"]
],

5: [["8",r"""e''16[c'']""",r"""g'16[b']""",r"""g''8""","x",r"""e''16[c'']""",r"""d''16[cs''!]""","x"],
[r"""\clef "treble" """,r"""\bar"|" """,r"""d''16[b']""","x",r"""c''16[g']""","x",r"""\bar"|" """,r"""c''4"""],
[r"""c''16[g']""",r"""e''16[c''] """,r"""\bar"|" """,r"""g'8""",r"""c''16[g']""","x",r"""a'16[b'] """,r"""\bar":|." """],
[r"""e'16[g' c'' g'] """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""e''16[c''] """,r"""\bar"|" """,r"""\bar".|:" """],
["3",r"""g'16[c''] """,r"""d''16[f''] """,r"""d''16.[b''32]""",r"""e'16[g'] """,r"""g'16[c''] """,r"""d''16[f''] """,r"""r8"""]
],

6:[["8",r"""e''16[c'']""",r"""a''8""",r"""d''16[e'']""",r"""e''16[c'']""",r"""e''16[c'']""",r"""f''16[d'']""",r"""r8"""],
[r"""\clef "treble" """,r"""\bar"|" """,r"""e''8""","x",r"""c''16[g']""","x",r"""\bar"|" """,r"""c''4"""],
[r"""c''16[g' e'' c'']""",r"""g''8""",r"""\bar"|" """,r"""d''8""",r"""g''8""","x",r"""g''16[b']""",r"""\bar":|." """],
[r"""g'8""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""g''8""",r"""\bar"|" """,r"""\bar".|:" """],
["3",r"""c''16[g']""",r"""f''8 """,r""" \acciaccatura{e''8} d''16[cs''!]""","x",r"""c''16[g']""",r"""d''16[e'']""","x"]
],

# Mistake in the original, line 7 column C, measure I e''16[g''] to eight notes
7: [[r"""\clef "treble" """,r"""\bar"|" """,r"""d''8""","x",r"""c''8""","x",r"""\bar"|" """,r"""c''4"""],
[r"""e''8[g'']""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""g''8""",r"""\bar"|" """,r"""\bar".|:" """],
["8",r"""c''8""",r"""g''8""",r"""e''16.[f''32]""","x",r"""c''8""",r"""d''16[e'']""","x"],
[r"""c''8""",r"""g''8""",r"""\bar"|" """,r"""c''8""",r"""g''8""","x",r"""g''16[g']""",r"""\bar":|." """],
["3",r"""e''8""",r"""f''8""",r"""g''16.[e''32]""",r"""e''8""",r"""e''8""",r"""f''16[fs'']""",r"""r8"""]
],

8: [[r"""c''16[g' c'' e'']""",r"""g''16[e'']""",r"""\bar"|" """,r"""c''8""",r"""g''16.[e''32]""","x",r"""c''16.[b'32]""",r"""\bar":|." """],
["8",r"""c''16[g']""",r"""c''16[g']""",r"""e''16.[f''32]""","x",r"""c''16[g']""",r"""d''16.[f''32]""","x"],
[r"""g''16[e'']""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""g''16[e'']""",r"""\bar"|" """,r"""\bar".|:" """],
["3",r"""c''16[e'']""",r"""e''16.[c''32]""",r"""d''16.[e''32]""",r"""c''16[e'']""",r"""c''16[e'']""",r"""f''16.[d''32]""",r"""r8"""],
[r"""\clef "treble" """,r"""\bar"|" """,r"""c''16.[b'32]""","x",r"""c''16[g']""","x",r"""\bar"|" """,r"""c''4"""]
],

9: [[r"""c''16.[d''32 e''16. f''32]""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""c''16.[b'32]""",r"""\bar"|" """,r"""\bar".|:" """],
[r"""c''16.[b'32]""",r"""d''16.[c''32]""",r"""\bar"|" """,r"""c''8""",r"""e''16.[f''32]""","x",r"""g''8""",r"""\bar":|." """],
[r"""\clef "treble" """,r"""\bar"|" """,r"""f''16.[e''32]""","x",r"""c''16.[b'32]""","x",r"""\bar"|" """,r"""c''4"""],
["8",r"""g''16.[fs''!32]""",r"""f''16.[c''32]""",r"""g''16.[f''32]""","x",r"""g''16.[fs''!32]""",r"""f''16.[e''32]""","x"],
["3",r"""g''16.[e''32]""",r"""f''16.[a''32]""",r"""e''16.[d''32]""",r"""c''16.[d''32]""",r"""g''16.[e''32]""",r"""d''8""",r"""r8"""]
],

10: [[r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x","x",r"""\bar".|:" """],
[r"""d''16.[e''32]""",r"""d''16.[c''32]""",r"""b'16.[g'32]""",r"""c''16.[d''32]""","x",r"""d''16.[c''32]""",r"""a'16.[b'32]""",r"""r8"""],
[r"""\clef "treble" """,r"""g''16.[fs''!32]""","x",r""" \acciaccatura{d''8} c''16.[b'32]""",r""" \acciaccatura{e''8} d''16.[cs''!32]""",r"""g''16.[fs''!32]""",r"""b'16.[g'32]""",r"""c''4"""],
[r"""f''16.[d''32]""",r"""\bar"|" """,r"""a'16.[b'32]""",r"""c''8""",r"""f''16.[d''32]""",r"""\bar"|" """,r"""\bar"|" """,r"""\bar":|." """],
[r""" \acciaccatura{e''8} d''16.[cs''!32]""",r"""g''16.[e''32]""",r"""b'16.[a'32]""","x",r"""d''16.[e''32]""",r"""g''16.[f''32]""",r"""b'16.[g'32]""","x"]
],

11: [[r"""\clef "treble" """,r"""\grace{a''8} g''8""",r"""b'8[g'']""",r"""c''16.[g'32]""",r"""d''16.[e''32]""",r"""a''32[g''16.]""",r"""b'8""","x"],
[r"""f''8""",r"""\acciaccatura{d''8}c''8""","x",r"""c''8""",r"""f''8""","x",r"""g''8[b']""",r"""r8"""],
[r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar".|:" """],
[r"""d''16.[e''32]""",r"""\acciaccatura{f''8}e''8""","x",r"""e''16.[d''32]""","x",r"""f''32[e''16.]""","x",r"""c''4"""],
[r"""d''8""","x",r"""b'8""",r"""\bar"|" """,r"""d''8""",r"""d''16.[c''32]""",r"""\bar"|" """,r"""\bar":|." """]
],

12: [[r"""f''8""",r"""c''8""",r"""d''8""",r"""\bar"|" """,r"""f''8""",r"""c''8""",r"""d''8""",r"""\bar".|:" """],
[r"""\clef "treble" ""","x",r"""b'32[(c'' d'' e'')]""",r"""e''16.[f''32]""",r"""d''8""",r"""g''8""","x",r"""c''4"""],
[r"""d''8""",r"""g''8""","x",r"""d''16.[e''32]""",r"""e''8""","x",r"""b'32[(c'' d'' e'')]""",r"""r8"""],
[r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x"],
[r"""e''8""",r"""c'''8""",r"""f''8""",r"""c''8""","x",r"""c'''8""",r"""f''8""",r"""\bar":|." """]
],

13: [[r"""d''16[b'16]""","x",r"""b'16[g'16]""",r"""c''16.[d''32]""",r"""g'16[b'16]""",r"""g'16[c''16]""","x",r"""c''4"""],
[r"""d''16[b'16]""",r"""e''16[c''16]""",r"""a'16[b'16]""",r"""g''8""",r"""\bar"|" """,r"""\bar"|" """,r"""a'16[b'16]""",r"""\bar":|." """],
[r"""\clef "treble" """,r"""e''16[c''16]""",r"""f''16[d''16]""","x",r"""d''16[b'16]""",r"""e''16[c''16]""",r"""f''16[d''16]""","x"],
[r"""g'16[b'16]""",r"""g'16[c''16]""","x",r"""e''16.[f''32]""",r"""d''16[b'16]""",r"""e''16[c''16]""",r"""b'16[g'16]""",r"""r8"""],
[r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x","x",r"""\bar"|" """,r"""\bar":|." """]
],

14: [[r"""b'16.[a'32]""","x",r"""d''8""",r"""c''8""",r"""b'16.[a'32]""",r"""e''16.[f''32]""",r"""d''8""",r"""\bar":|." """],
[r"""\bar"|" """,r"""\bar"|" ""","x","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x"],
[r"""g'8""",r"""g''8""",r"""\bar"|" """,r"""\bar"|" """,r"""g'8""",r"""g''8""","x",r"""\bar".|:" """],
[r"""\clef "treble" """,r"""c''16.[d''32]""",r"""g'16.[a'32]""",r"""c''16.[e''32]""","x",r"""c''16.[d''32]""",r"""g'16.[a'32]""",r"""c''4"""],
[r"""d''16.[c''32]""",r"""e''16.[f''32]""",r"""b'16.[c''32]""",r"""g''16.[e''32]""",r"""d''16.[c''32]""","x",r"""b'16[c'']""",r"""r8"""]
],

15: [[r"""\clef "treble" """,r"""\acciaccatura{d''8}c''16. [b'32]""","x",r"""c''16. [g'32]""",r"""g'16. [a'32]""",r"""\acciaccatura{d''8}c''16. [b'32]""",r"""\acciaccatura{e''8}d''16. [cs''!32]""",r"""c''4"""],
[r"""b'16.[c''32]""",r"""c''16.[d''32]""",r"""d''16.[e''32]""",r"""g''8""",r"""d''16.[b'32]""","x",r"""f''16.[d''32]""",r"""\bar":|." """],
[r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" ""","x","x"],
[r"""g'16.[a'32]""","x",r"""\acciaccatura{e''8}d''16. [cs''!32]""",r"""e''16.[c''32]""",r"""b'16.[c''32]""",r"""c''16.[d''32]""",r"""d''16.[e''32]""",r"""r8"""],
[r"""d''16.[b'32]""",r"""e''16.[c''32]""",r"""f''16.[d''32]""","x",r"""\bar"|" """,r"""e''16.[c''32]""",r"""\bar"|" """,r"""\bar".|:" """]
],

16: [[r"""g''8[e'']""",r"""\bar"|" ""","x",r"""g'8""","x",r"""c''8""",r"""e''16.[d''32]""",r"""\bar":|." """],
[r"""d''8""","x",r"""c''16.[b'32]""",r"""\bar"|" ""","x",r"""\bar"|" """,r"""c''16.[b'32]""",r"""\bar".|:" """],
["x",r"""c''8""",r"""e''16.[d''32]""","x",r"""d''8""","x",r"""g''32[f''16.]""",r"""r8"""],
[r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""\bar"|" ""","x"],
[r"""\clef "treble" """,r"""g''8[(e'')]""",r"""g''16.[f''32]""",r"""c''8[(e'')]""",r"""g''8[(f'')]""",r"""g''8[(e'')]""","x",r"""c''4"""]
],

17: [[r"""g''16[fs''!]""",r"""c''16[e'']""",r"""d''16[f'']""",r"""c''16[e'']""","x",r"""c''16[e'']""",r"""d''16[f'']""",r"""c''4"""],
[r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar".|:" """],
[r"""f''16[d'']""",r"""\bar"|" """,r"""e''16.[d''32]""",r"""g''8""",r"""f''16[d'']""",r"""d''16[c'']""",r"""\bar"|" """,r"""\bar":|." """],
[r"""\clef "treble" """,r"""c''16[g']""",r"""d''16[g']""","x",r"""g''16[fs''!]""",r"""c''16[g']""",r"""d''16[g']""","x"],
[r"""f''!16[e'']""",r"""d''16[c'']""","x",r"""g''16[c''']""",r"""f''!16[e'']""","x",r"""e''16[d'']""",r"""r8"""]
],

18: [[r"""g''32[f''16.]""",r"""c''32[e''16.]""",r"""d''32[f''16.]""",r"""\bar"|" """,r"""e''32[d''16.]""","x",r"""d''32[f''16.]""",r"""\bar":|." """],
[r"""g''32[a''16.]""",r"""c''32[b'16.]""","x",r"""g''8""",r"""g''32[f''16.]""",r"""c''32[e''16.]""","x",r"""r8"""],
[r"""\clef "treble" ""","x",r"""d''32[cs''!16.]""",r"""c''8[(e'')]""",r"""g''32[a''16.]""",r"""c''32[b'16.]""",r"""d''32[cs''!16.]""",r"""c''4"""],
[r"""e''32[d''16.]""",r"""g''32[e''16.]""",r"""a'32[b'16.]""","x",r"""\bar"|" """,r"""g''32[e''16.]""",r"""a'32[b'16.]""",r"""\bar".|:" """],
[r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x","x",r"""\bar"|" """,r"""\bar"|" ""","x"]
],

19: [["x",r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """],
[r"""\clef "treble" ""","x",r"""\bar"|" """,r"""c''16[b']""","x",r"""g''4""",r"""d''8[(g'')]""",r"""c''4"""],
[r"""c''4""",r"""g''4""","x",r"""c''16[d'']""",r"""\bar"|" """,r"""ef''!8""","x",r"""r8"""],
["x",r"""ef''!8""",r"""d''8[(g'')]""","x",r"""c''4""","x",r"""b'8""",r"""\bar":|." """],
[r"""ef''!8""","x",r"""b'8""",r"""c''8""",r"""ef''!8""","x","x",r"""\bar".|:" """]
],

20: [["x",r"""g''16[fs''!]""","x",r"""c''16[ef''!]""",r"""c''16.[b'32]""",r"""g''16[fs''!]""",r"""\bar"|" """,r"""c''4"""],
[r"""c''16.[b'32]""",r"""g''16[ef''!]""",r"""b'16.[c''32]""","x",r"""c''8""",r"""g''16[ef''!]""",r"""b'16.[c''32]""",r"""r8"""],
[r"""c''8""",r"""d''16[c'']""",r"""d''16.[g'32]""",r"""g''16[e'']""","x",r"""d''16[c'']""",r"""d''16.[g'32]""",r"""\bar":|." """],
[r"""ef''!8""","x",r"""a'16.[b'32]""",r"""c''8""",r"""ef''!8""","x",r"""a'16.[b'32]""",r"""\bar".|:" """],
[r"""\clef "treble" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """]
],

21: [[r"""e''16[(d'')]""",r"""e''16[(d'')]""",r"""g''16[f'']""","x",r"""ef''!16[d'']""",r"""c''16[g'']""",r"""g''16[as''!]""",r"""r8"""],
[r"""c''16[(g'')]""",r"""c''16-.[(g''-.)]""",r"""e''16-.[(d''-.)]""",r"""c''16-.[(e''-.)]""",r"""c''16[(g'')]""","x",r"""g''16[f'']""",r"""\bar":|." """],
[r"""g''16-.[(g''-.)]""",r"""g''16-.[(g''-.)]""","x",r"""g''8""",r"""g''16-.[(g''-.)]""",r"""g''16-.[(g''-.)]""",r"""ef''!16[d'')]""",r"""\bar".|:" """],
["x","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""\bar"|" """],
[r"""\clef "treble" """,r"""\bar"|" """,r"""g''16[(a'')]""",r"""c''16[g']""",r"""\bar"|" """,r"""ef''!16[d'']""",r"""\bar"|" """,r"""c''4"""]
],

22: [["x",r"""c''8""",r"""cs''!16[(d'')]""","x",r"""c''8""",r"""c''8""",r"""cs''!16[(d'')]""",r"""\bar":|." """],
[r"""g''8""","x",r"""\acciaccatura{f''8} e''16[d'']""",r"""g'8""",r"""g''8""","x",r"""\acciaccatura{f''8} ef''!16[d'']""",r"""\bar".|:" """],
[r"""\clef "treble" ""","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" ""","x",r"""\bar"|" """],
[r"""ef''!16.[d''32]""",r"""\bar"|" """,r"""b'16[(c'')]""",r"""c''16[(g'')]""",r"""\bar"|" """,r"""c''8[(ef''!)]""",r"""\bar"|" """,r"""c''4"""],
[r"""c''8""",r"""c''8[(ef''!)]""","x",r"""ef''!16[c'']""",r"""ef''!16.[d''32]""","x",r"""b'16[(c'')]""",r"""r8"""]
],

23: [[r"""g'8""",r"""\bar"|" """,r"""f''16[d'']""",r"""g'8""","x",r"""c''8""",r"""c''8""",r"""\bar".|:" """],
["x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """],
[r"""\clef "treble" """,r"""c''16.[(b'32)]""",r"""d''16[(cs''!)]""",r"""\bar"|" """,r"""f''16.[(e''32)]""",r"""e''16.[(ds''!32)]""",r"""\bar"|" """,r"""c''4"""],
[r"""c''16.[b'32]""",r"""c''8""",r"""d''16[(e'')]""",r"""g''16[(f'')]""",r"""f''8[(d'')]""","x",r"""d''16.[(cs''!32)]""",r"""r8"""],
[r"""c''8""",r"""g'8""","x",r"""d''16[(b')]""","x",r"""e''8""",r"""d''8""",r"""\bar":|." """]
],

24: [["x",r"""g'8""",r"""b'16[g']""",r"""e''16[d'']""",r"""f''8""","x","x",r"""\bar".|:"""],
[r"""e''8""",r"""b'16.[a'32]""",r"""f''16[d'']""","x",r"""d''16[(e'')]""",r"""g''8""",r"""d''8""",r"""\bar":|." """],
["x",r"""d''16.[c''32]""","x",r"""d''16[(f'')]""",r"""b'16[(c'')]""",r"""ef''!16[f'']""",r"""b'16[c'']""",r"""r8"""],
[r"""c''8[(g')]""",r"""\bar"|" """,r"""d''16[e'']""",r"""g'16[(b')]""",r"""\bar"|" """,r"""c''16[d'']""",r"""g'16[(a')]""",r"""c''4"""],
[r"""\clef "treble" ""","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """]
],
25: [["x","x",r"""f''8[b']""","x",r"""ef''!16[d'']""",r"""b'16[c'']""","x",r"""\bar":|." """],
[r"""c''8""",r"""b'8[(d'')]""","x",r"""ef''!16[d'']""","x",r"""d''16[c'']""",r"""f''16[d'']""",r"""r8"""],
[r"""g''8[(ef''!)]""","x",r"""d''16.[ef''!32]""",r"""g''16[f'']""",r"""as''!16[f'']""",r"""g''16.[ef''!32]""",r"""d''16[(ef''!)]""",r"""c''4"""],
[r"""\clef "treble" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" """],
["x",r"""g'8""","x",r"""c''8""",r"""cs''!16[d'']""","x",r"""g''16.[b'32]""",r"""\bar".|:" """]
],

26: [["x",r"""c''16[g']""",r"""c''8""",r"""c''16[b']""","x",r"""d''8""",r"""\acciaccatura{d''8'} c''16.[b'32]""",r"""r8"""],
[r"""c''16[(g')]""","x",r"""\bar"|" """,r"""\bar"|" """,r"""g''8[ef''!]""",r"""\acciaccatura{e''8} d''16.[cs''!32]""",r"""\bar"|" """,r"""g'4"""],
[r"""\clef "treble" """,r"""\bar"|" ""","x","x",r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """],
[r"""bf'!16[(b'!)]""",r"""bf'!16[(b'!)]""",r"""d''16.[e''32]""",r"""d''8""","x",r"""b'8""",r"""g'16[fs'!16]""",r"""\bar".|:" """],
[r"""af'!16[(a'!)]""",r"""af'!16[(a'!)]""",r"""ef''!16.[f''32]""",r"""c''16[ef''!]""",r"""c''8""","x",r"""c''16.[as'!32]""",r"""\bar":|." """]
],

27: [[r"""g''16.[as''!32]""",r"""\bar"|" """,r"""d''16.[cs''!32]""",r"""c''8""",r"""d''8""",r"""\bar"|" """,r"""\acciaccatura{d''8} c''16.[b'32]""",r"""g''4"""],
[r"""\clef "treble" ""","x",r"""\bar"|" """,r"""\bar"|" """,r"""\bar"|" ""","x",r"""\bar"|" """,r"""\bar"|" """],
[r"""d''16.[c''32]""",r"""ef''!8""","x",r"""g''8""","x",r"""ef''!8""",r"""ef''!16.[fs''!32]""",r"""\bar".|:" """],
[r"""g''16.[ef''!32]""",r"""f''8""",r"""b'16.[g'32]""","x",r"""f''8""",r"""g''8""",r"""c''16.[d''32]""",r"""\bar":|." """],
["x",r"""g''8""",r"""d''16.[f''32]""",r"""ef''!8""",r"""d''8""",r"""e''8""","x",r"""r8"""]
],
}

# generation initial sequence of n integers:
n = 10
sequence = import_random_sequence(n)
#sequence = [1,10,25,34,56,89,97,103,121,142]
#sequence = [1 for i in range(10)]
sequence_mod9 = [] 
r_string=""
for i in range(len(sequence)):
	sequence_mod9.append(sequence[i]%9)
	r_string+=str(sequence_mod9[i])
	if i<(len(sequence)-1):
		r_string+="-"

# Check integrity tables

#Integrity tabella 2

#for i in range(len(tabella2)):
	#row = tabella2[i+1]
	#print ("row",i+1,":",len(row))

# Integrity tabella_musicale

#for i in range(len(tavola_musicale)):
	row = tavola_musicale[i+1]
	#print ("row",i+1,":",len(row))
	#for j in range(len(row)):
		#print ("elements",j,len(row[j]))


print("Initial sequence:",sequence)
print("Initial sequence mod9:",sequence_mod9)
triangle = triangle_modulo9(sequence,n)
#print("Triangle:",triangle)
mote1=mote1_generation(triangle,n)
mote=mote_generation(mote1)
#print("MOTE matrix:",mote)
parte1,parte2,parte3=generation_walse_tables(mote)
print("Parte1 matrix:",parte1)
print("Parte2 matrix:",parte2)
print("Parte3 matrix:",parte3)


parte1_s,column1_a=generate_parte_string(parte1,tabella2)
parte2_s,column2_a=generate_parte_string(parte2,tabella2)
parte3_s,column3_a=generate_parte_string(parte3,tabella2)

print("Parte1 string:",parte1_s)
print("Parte2 string:",parte2_s)
print("Parte3 string:",parte3_s)



#Input parte_string, column_a, tabella musicale
music_fragments = [[0] for i in range(3)]
print("Parte1:")
music_fragments[0].append(generate_fragment_list(parte1_s,column1_a,tavola_musicale,sequence_mod9,1))
print("Parte2:")
music_fragments[1].append(generate_fragment_list(parte2_s,column2_a,tavola_musicale,sequence_mod9,2))
print("Parte3:")
music_fragments[2].append(generate_fragment_list(parte3_s,column3_a,tavola_musicale,sequence_mod9,3))

lilypond_file=abjad_make_score(len(music_fragments[0]),sequence_mod9,r_string)

abjad.show(lilypond_file, output_directory="./mangeruva-1823/temp/")

#rename the file(s)
source_dir = './mangeruva-1823/temp/'
target_dir = './mangeruva-1823/output/'
	
file_names = os.listdir(source_dir)
	
for file_name in file_names:
	# exclude .log files
	if file_name[-3:] =='.ly':
		os.rename(source_dir+file_name,target_dir+"gp-01-out-"+r_string+".ly")

# TO DO:
	# Tabella 3 encoding musical symbols (as lilypond line)
	# Assemblage bars and symbols to create a melody



