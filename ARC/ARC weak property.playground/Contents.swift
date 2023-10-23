class B {
	let title: String

	init(_ title: String) {
		self.title = title
	}
}

class A {
	weak var weakB: B?

	init(_ objectB: B) {
		self.weakB = objectB
	}
}

var strongB = B("first")

let a = A(strongB)

strongB = B("second")

// Тут к слабой переменной присваеваем ссылку на новый объект
a.weakB = strongB

if let b = a.weakB {
	print(b.title)
} else {
	print("Object B is nil")
}
