#This script will assemble a given measure, according to a specific voice path


rhpath="./uv/lm-uv-"
lhpath="./lv/lm-lv-"
#Input values
print("Insert measure number")
measure = input()
print("Insert option number")
option = input()
print("Insert Dessus part:")
print(r""" \relative c''{""")
rh = input()
print("Insert Basse part:")
print(r""" \relative c{""")
lh = input()
	
# Write part files
with open(rhpath+str(measure)+"-"+str(option)+".ly","w+") as f:
	f.writelines(r"""\relative c''{""")
	f.writelines(rh)
	f.writelines(r"""}""")
	f.close()
with open(lhpath+str(measure)+"-"+str(option)+".ly","w+") as f:
	f.writelines(r"""\relative c{""")
	f.writelines(lh)
	f.writelines(r"""}""")
	f.close()


# Assemble parts into lilypond code:
with open("./ef-"+str(measure)+"-"+str(option)+".ly","w+") as f:
	s1=open("layout-part1.txt")
	s2=open("layout-part2.txt")
	s5=open("layout-part5.txt")
	f.writelines(s1)
	f.writelines(r'\include "'+rhpath+str(measure)+"-"+str(option)+r'.ly"')
	f.writelines(s2)
	f.writelines(r'\include "'+lhpath+str(measure)+"-"+str(option)+r'.ly"')
	f.writelines(s5)
	f.close()


