#This script will assemble a given measure, according to a specific voice path
import os
vc1path="./vc1/gp-02-vc1-"
vc2path="./vc2/gp-02-vc2-"
rhpath="./rh/gp-02-rh-"
lhpath="./lh/gp-02-lh-"
filepath = "gp-02-"
#Input values 
exists = True
while exists == True:
	print("Insert measure number")
	measure = input()
	exists = os.path.exists(filepath+str(measure)+".ly")
print("Insert voice1 part:")
print(r""" \relative c''{""")
vc1 = input()
print("Insert voice2 part:")
print(r""" \relative c''{""")
vc2 = input()
print("Insert rh part:")
print(r""" \relative c''{""")
rh = input()
print("Insert lh part:")
print(r""" \relative c{""")
lh = input()
	
# Write part files
with open(vc1path+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(vc1)
	f.writelines(r"""}""")
	f.close()
with open(vc2path+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(vc2)
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
with open("./gp-02-"+str(measure)+".ly","w+") as f:
	s1=open("layout-part1.txt")
	s2=open("layout-part2.txt")
	s3=open("layout-part3.txt")
	s4=open("layout-part4.txt")
	s5=open("layout-part5.txt")
	f.writelines(s1)
	f.writelines(r'\include "'+vc1path+str(measure)+r'.ly"')
	f.writelines(s2)
	f.writelines(r'\include "'+vc2path+str(measure)+r'.ly"')
	f.writelines(s3)
	f.writelines(r'\include "'+rhpath+str(measure)+r'.ly"')
	f.writelines(s4)
	f.writelines(r'\include "'+lhpath+str(measure)+r'.ly"')
	f.writelines(s5)
	f.close()


