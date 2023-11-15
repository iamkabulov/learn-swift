//MARK: - Удвоить каждый элемент массива чисел.
//
let doubleTwoTimes = [1, 2, 3, 4, 5]
doubleTwoTimes.map { number in
	return number * 2
}
//MARK: - Преобразовать массив строк в массив их длин.
//
let stringCountArray = ["apple", "banana", "cherry", "date", "fig"]
stringCountArray.map { item in
	item.count
}
//MARK: - Преобразовать массив имен в массив приветствий, добавив "Привет, " к каждому имени.
//
let people = ["Alice", "Bob", "Charlie", "David", "Eva"]
people.map { name in
	"Привет, \(name)"
}
//MARK: - Преобразовать массив чисел в массив строк.
//
let IntToString = [10, 20, 30, 40, 50]
IntToString.map { number in
	String(number)
}

//MARK: - Извлечь числа из массива строк.
//
let stringArrayWithNumbers = ["1", "2", "three", "4", "five"]
stringArrayWithNumbers.compactMap { stringNumber in
	Int(stringNumber)
}
//MARK: - Преобразовать массив строк в массив целых чисел.
//
let stringNumbersToInt = ["10", "20", "30", "40", "50"]
stringNumbersToInt.compactMap { string in
	Int(string)
}
//MARK: - Удалить все nil значения из массива опциональных чисел.
//
let optionalValues = [Optional(1), Optional(nil), Optional(3), Optional(nil), Optional(5)]
let resultArrayWithoutOptionals = optionalValues.compactMap { $0 }
resultArrayWithoutOptionals
//MARK: - Преобразовать массив строк в массив чисел, игнорируя некорректные значения.
//
let arrayOfString = ["10", "20", "thirty", "40", "fifty"]
let resultArrayOfInt = arrayOfString.compactMap { Int($0) }
resultArrayOfInt

//MARK: - Объединить два массива строк в один массив, содержащий длины строк в верхнем регистре.
let array1 = ["apple", "banana", "cherry"]
let array2 = ["date", "fig", "grape"]

var twoArrays = [array1, array2]
let resultMergingArrays = twoArrays
	.flatMap { $0 }
	.map { $0.count }
resultMergingArrays

//MARK: - Найти среднее значение чисел в массиве.
let forFindingAverage = [10, 15, 20, 25, 30]
let sum = forFindingAverage.reduce(0) { num1, num2 in
	num1 + num2
}
sum/forFindingAverage.count

//MARK: - Преобразовать массив строк в строку, объединив элементы через запятую и добавив "и" перед последним элементом.
let strings = ["яблоко", "банан", "вишня", "дыня"]
let concat = strings.reduce("") { string1, string2 in
	if string2 != strings.last {
		return string1 + string2 + ", "
	}
	return string1 + "и " + string2
}

//MARK: - Извлечь из массива опциональных чисел те, которые являются четными.

let optionalValues2 = [Optional(1), Optional(2), Optional(nil), Optional(3), Optional(4)]
let resultOptionalEvenValues = optionalValues2.compactMap { $0 }
	.filter { $0 % 2 == 0 }
resultOptionalEvenValues

//MARK: - Найти количество уникальных элементов в массиве строк.

let deleteDuplicates =  ["apple", "banana", "cherry", "apple", "date", "banana"]
Set(deleteDuplicates).count

//MARK: - Преобразовать массив чисел в массив строк, оставив только те, которые делятся на 3.

let divideByThree = [1, 2, 3, 4, 5, 6, 7, 8, 9]
divideByThree.filter { $0 % 3 == 0 }
			.map { String($0)}

//MARK: - Найти индекс первого вхождения определенного элемента в массиве строк.

let stringArrayIndex = ["apple", "banana", "cherry", "date", "banana"]
stringArrayIndex.firstIndex(of: "cherry")

//MARK: - Найти индекс первого отрицательного числа в массиве целых чисел.

let findingNegativeNumberIndex = [5, 10, -3, 8, -6, 15]
findingNegativeNumberIndex.firstIndex { $0 < 0 }

//MARK: - Найти первый элемент массива строк, начинающийся с определенной буквы.

let stringFirstCharC = ["apple", "banana", "cherry", "date", "fig"]
stringFirstCharC.firstIndex { $0.hasPrefix("c")}

//MARK: - Найти первый четный элемент в массиве целых чисел.

let findFirstEvenNumb = [3, 7, 4, 9, 12, 5]
findFirstEvenNumb.first { $0 % 2 == 0 }

//MARK: - Найти первый положительный элемент в массиве вещественных чисел.

let findFirstPositiveDouble = [-2.5, 0.8, -1.2, 3.5, -4.0]
findFirstPositiveDouble.first { $0 > 0 }
