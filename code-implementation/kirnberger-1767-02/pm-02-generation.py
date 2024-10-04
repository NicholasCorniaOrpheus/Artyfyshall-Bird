#This script will assemble a given measure, according to a specific voice path
import os
vln1path="./violin1/pm-02-vln1-"
#vln2path="./violin2/pm-01-vln2-"
rhpath="./rh/pm-02-rh-"
lhpath="./lh/pm-02-lh-"
filepath = "pm-02-"
#Input values 
exists = True
while exists == True:
	print("Insert measure number")
	measure = input()
	exists = os.path.exists(filepath+str(measure)+".ly")
print("Insert violin1 part:")
print(r""" \relative c''{""")
vln1 = input()
#print("Insert violin2 part:")
#print(r""" \relative c''{""")
#vln2 = input()
print("Insert lh part:")
print(r""" \relative c''{""")
lh = input()
	
# Write part files
with open(vln1path+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(vln1)
	f.writelines(r"""}""")
	f.close()
#with open(vln2path+str(measure)+".ly","w+") as f:
	#f.writelines(r"""\relative c''{""")
	#f.writelines(vln2)
	#f.writelines(r"""}""")
	#f.close()
with open(lhpath+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c{""")
	f.writelines(lh)
	f.writelines(r"""}""")
	f.close()
with open(rhpath+str(measure)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	rh = vln1
	f.writelines(rh)
	f.writelines(r"""}""")
	f.close()


# Assemble parts into lilypond code:
with open("./pm-02-"+str(measure)+".ly","w+") as f:
	s1=open("layout-part1.txt")
	s2=open("layout-part2.txt")
	s3=open("layout-part3.txt")
	s4=open("layout-part4.txt")
	s5=open("layout-part5.txt")
	f.writelines(s1)
	f.writelines(r'\include "'+vln1path+str(measure)+r'.ly"')
	f.writelines(s2)
	#f.writelines(r'\include "'+vln2path+str(measure)+r'.ly"')
	f.writelines(s3)
	f.writelines(r'\include "'+rhpath+str(measure)+r'.ly"')
	f.writelines(s4)
	f.writelines(r'\include "'+lhpath+str(measure)+r'.ly"')
	f.writelines(s5)
	f.close()


