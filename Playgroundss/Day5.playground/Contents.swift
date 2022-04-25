import UIKit

// 1.Writing functions

func printHelp() {
    let message = """
Welcome to MyApp! \
Run this app inside a directory of images and \
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

// 2.Accepting parameters

func square(number: Int) {
    print(number * number)
}

square(number: 2)

// 3.Returning values

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

// 4.Parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Oğulcan")

// 5.Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Kemal")

// 6.Default parameters

func greet2(_ person: String = "default", nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)
greet2()

// 7.Variadic functions (Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type.)

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1, 2, 3, 4, 5)

// 8.Writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// 9.Running throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// 10.inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

// 11.Functions summary
// One: Functions let us re-use code without repeating ourselves.
// Second: Functions can accept parameters – just tell Swift the type of each parameter.
// Three: Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
// Four: You can use different names for parameters externally and internally, or omit the external name entirely.
// Five: Parameters can have default values, which helps you write less code when specific values are common.
// Six: Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
// Seven: Functions can throw errors, but you must call them using try and handle errors using catch.
// Eight: You can use inout to change variables inside a function, but it’s usually better to return a new value.
