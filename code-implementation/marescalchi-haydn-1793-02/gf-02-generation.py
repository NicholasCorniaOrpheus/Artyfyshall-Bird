#This script will assemble a given measure, according to a specific voice path
import os
rhpath="./rh/gf-02-rh-"
lhpath="./lh/gf-02-lh-"
filepath = "gf-02-"
#Input values 
exists = True
while exists == True:
	print("Insert measure number")
	measure = input()
	exists = os.path.exists(filepath+str(measure)+".ly")

print("Insert right hand part:")
print(r""" \relative c''{""")
rh = input()
print("Insert left hand part:")
print(r""" \relative c{""")
lh = input()
	
# Write part files
with open(rhpath+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(rh)
	f.writelines(r"""}""")
	f.close()
with open(lhpath+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c{""")
	f.writelines(lh)
	f.writelines(r"""}""")
	f.close()

# Assemble parts into lilypond code:
with open("./gf-02-"+str(measure)+".ly","w+") as f:
	s1=open("layout-part1.txt")
	s4=open("layout-part4.txt")
	s5=open("layout-part5.txt")
	f.writelines(s1)
	f.writelines(r'\include "'+rhpath+str(measure)+r'.ly"')
	f.writelines(s4)
	f.writelines(r'\include "'+lhpath+str(measure)+r'.ly"')
	f.writelines(s5)
	f.close()


