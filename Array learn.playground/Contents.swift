import Foundation

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


//MARK: - Найти сумму всех элементов в целочисленном массиве.
let numbers = [1, 2, 3, 4, 5]
let sum = numbers.reduce(0, +)

//MARK: - Найти максимальное и минимальное значения в массиве чисел.
let maxNumber = numbers.max()
let minNumber = numbers.min()

var strings = ["яблоко", "банан", "апельсин", "груша", "вишня"]
strings.sort()
var sorted = strings.sorted()

let numbers2 = [1, 2, 3, 4, 7, 2, 3, 4, 5, 6]
var x = [Int]()
for number in numbers2 {
	if !x.contains(number) {
		x.append(number)
	}
}

x

//MARK: - Развернуть массив задом наперед без использования встроенных функций.
var x12: [Int] = []
for number in numbers2 {
	x12.insert(number, at: 0)
}
x12

var newArrays: [Int] = [1, 2, 3, 4, 5]
var per = 0
var pos = newArrays.count - 1

while per < newArrays.count - 1 {
	var temp = newArrays[pos]
	newArrays[pos] = newArrays[per]
	newArrays[per] = temp
	per += 1
	pos -= 1
}

newArrays

//MARK: - Проверить, является ли одно множество подмножеством другого.
let set1: Set<Int> = [1, 2, 3, 4, 5]
let set2: Set<Int> = [1, 2, 3, 6, 7]

let truth = set2.isSubset(of: set1)
truth

//MARK: - Найти объединение двух множеств.
let union = set1.union(set2)


//MARK: - Найти пересечение двух множеств.

let set01: Set<Int> = [1, 2, 3, 4, 5]
let set02: Set<Int> = [3, 4, 5, 6, 7]

let setIntersection = set01.intersection(set02)

//MARK: - Найти разность двух множеств.
let set001: Set<Int> = [1, 2, 3, 4, 5]
let set002: Set<Int> = [3, 4, 5, 6, 7]

let setSubstruction = set001.subtracting(set002)
//MARK: - Проверить, есть ли общие элементы в двух множествах.
let setCommonElements = set001.intersection(set002).isEmpty ? "Нет" : "Есть"

//MARK: - Найти значение по ключу в словаре и вернуть "Не найдено", если ключ отсутствует.
let dictionary: [String: Int] = [
	"Nurs": 1121,
	"Ais": 1121,
	"NA": 1121,
	"nas": 23,
	"as": 23
]

//if dictionary["Nurs"] == nil {
//	print("Не найдено")
//} else {
//	print(dictionary["Nurs"] ?? "xa")
//}
//MARK: - Найти наиболее часто встречающийся элемент в словаре со счетчиками.
	//var filtered: [Int] = []
	//for item in dictionary.values {
	//	let x = dictionary.values.filter { $0 == item }
	//	if x.count > filtered.count {
	//		filtered = x
	//	}
	//}
	//print(filtered[0])
var dictionary2: [String: Int] = ["apple": 3, "banana": 2, "cherry": 3, "date": 1, "fig": 3]

var frequencyCount: [Int: Int] = [:]
var mostFrequentValue: Int? = nil
var maxFrequency: Int = 0

for value in dictionary2.values {
	frequencyCount[value, default: 0] += 1
	if let frequency = frequencyCount[value], frequency > maxFrequency {
		maxFrequency = frequency
		mostFrequentValue = value
	}
}

if let mostFrequent = mostFrequentValue {
	print("Наиболее часто встречающийся элемент: \(mostFrequent)")
} else {
	print("Словарь пуст")
}

//MARK: - Суммировать значения в словаре, если ключи имеют определенное свойство (например, четные ключи).
let dataDictionary: [Int: Int?] = [1: 10, 2: 20, 3: 30, 4: nil, 5: 50, 6: 60]

func sumDict(dict: [Int: Int?]) -> Int {
	var sumOfEven = 0
	for dataKey in dict.keys.filter({ $0 % 2 == 0 }) {
		guard let values = dict[dataKey] else { return 0 }
		sumOfEven += values ?? 0
	}
	return sumOfEven
}
sumDict(dict: dataDictionary)

//MARK: - Удалить элемент из словаря по ключу, если он соответствует определенным условиям.
var dataDictionary1: [String: Int] = ["apple": 10, "banana": 20, "cherry": 30, "date": 40, "fig": 50, "grape": 60]
func deleteItem(dict: [String: Int]) -> [String: Int] {
	let filtered = dict.filter { $0.key.count <= 5 }
	return filtered
}

deleteItem(dict: dataDictionary1)

//MARK: - Объединить два словаря, учитывая возможные конфликты при одинаковых ключах.

let first: [Int: Int] = [1: 10, 2: 20, 3: 30, 4: 40, 5: 50, 6: 60]
let second: [Int: Int] = [7: 10, 8: 20, 3: 21]
func unionDict(first: [Int: Int], second: [Int:Int]) -> [Int: Int] {
	return first.merging(second) { num1, num2 in
		if num1 > num2 {
			return num1
		}
		return num2
	}
}
unionDict(first: first, second: second)
