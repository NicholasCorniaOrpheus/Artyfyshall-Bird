#This script will assemble a given measure fragment 

#cantus,altus,tenor,bassus
n = 4
voices = []
voices_path = []

contrapunctus = "simplex"

cpath="./rh/gp-01-rh-"
apath="./voice/gp-01-vc-"
tpath="./lh/gp-01-lh-"
bpath=
#Input values
print("Insert pinax number:")
pinax = input()
print("Insert verse number:")
verse = input()
print("Insert measure number:")
measure = input()

#Generating paths
for i in range(n):
	path = "./pinax"+str(pinax)+"/vc"+str(i+1)+"/mm-"+contrapunctus+"-vc-"+str(i+1)+"-"+str(pinax)+"-"+str(verse)+"-"+str(measure)+"-"
	voices_path.append(path)
	print("Insert voice"+str(i+1)+"part:")
	print(r""" \relative c{""")
	voice = input()
	voices.append(voice)
	# Write part files
	with open(path+".ly","w+") as f:
		f.writelines(r"""\relative c{""")
		f.writelines(voice)
		f.writelines(r"""}""")
		f.close()


# Assemble parts into lilypond code:
with open("./pinax"+str(pinax)+"/mm-"+contrapunctus+"-"+str(pinax)+"-"+str(verse)+"-"+str(measure)+".ly","w+") as f:
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


