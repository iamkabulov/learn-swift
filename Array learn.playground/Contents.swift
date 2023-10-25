import Foundation

// Array syntax

let array: Array<String> = ["String1", "String2"]

print(array)

var a = [1, 2, 3, 6, 7]

// a = "string"  error

print(a)


var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
var reversedArray: Array<String> = []

for element in toDoList {
	reversedArray.insert(element, at: 0)
}
print(reversedArray)

var newArray = a.map { x in
	return x - 1
}
