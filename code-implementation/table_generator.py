letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V"]

numbers = [_ for _ in range(2,13)]


for i in range(len(letters)):
	string = "["
	for j in range(len(numbers)):
		string+=r'"'+letters[i]+str(numbers[j])+r'",'
	string+="],"
	print (string)


