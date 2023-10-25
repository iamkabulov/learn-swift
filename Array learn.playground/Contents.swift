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


var even: Array<Int> = []
var odd: Array<Int> = []
for i in 1...10 {
	if i%2 == 0 {
		even.insert(i, at: 0)
	} else {
		odd.append(i)
	}
}

print(odd, even)

func findHouse(address: Int, length: Int) -> Int {
	var house = 0
	var even: Array<Int> = []
	var odd: Array<Int> = []
	for i in 1...length*2 {
		if i%2 == 0 {
			even.insert(i, at: 0)
		} else {
			odd.append(i)
		}
	}
	if address%2 == 0 {
		for i in 0..<even.count {
			if address == even[i] {
				house = odd[i]
			}
		}
	} else {
		for i in 0..<odd.count {
			if address == odd[i] {
				house = even[i]
			}
		}
	}
	return house
}

print(findHouse(address: 6, length: 5))

func findHouseEff(address: Int, length: Int) -> Int {
	var summOf = length*2 + 1
	return summOf - address
}

print(findHouseEff(address: 6, length: 5))

