#This script will assemble a given measure, according to a specific voice path
import os
vcpath="./voice/gp-01-vc-"
rhpath="./rh/gp-01-rh-"
lhpath="./lh/gp-01-lh-"
filepath = "gp-01-"
#Input values
exists = True
while exists == True:
	print("Insert measure number")
	measure = input()
	exists = os.path.exists(filepath+str(measure)+".ly")
print("Insert voice part:")
print(r""" \relative c''{""")
vc = input()
print("Insert rh part:")
print(r""" \relative c''{""")
rh = input()
print("Insert lh part:")
print(r""" \relative c{""")
lh = input()
	
# Write part files
with open(vcpath+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(vc)
	f.writelines(r"""}""")
	f.close()
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
with open("./gp-01-"+str(measure)+".ly","w+") as f:
	s1=open("layout-part1.txt")
	s3=open("layout-part3.txt")
	s4=open("layout-part4.txt")
	s5=open("layout-part5.txt")
	f.writelines(s1)
	f.writelines(r'\include "'+vcpath+str(measure)+r'.ly"')
	f.writelines(s3)
	f.writelines(r'\include "'+rhpath+str(measure)+r'.ly"')
	f.writelines(s4)
	f.writelines(r'\include "'+lhpath+str(measure)+r'.ly"')
	f.writelines(s5)
	f.close()


