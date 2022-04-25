import UIKit

// 1.Handling missing data

var age: Int?
age = 24

// 2.Unwrapping optionals

var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// 3.Unwrapping with guard (The major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.)

func greet (_ name: String?) {
    guard let unwrapped2 = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped2)!")
}

// 4.Force unwrapping

let str = "4"
let num = Int(str)!

// 5.Implicitly unwrapped optionals

let age2: Int! = nil

// 6.Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "defaultValue"

// 7.Optional chaining

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// 8.Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// 9.Failable initializers

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// 10.Typecasting

class Animal {}
class Fish : Animal {}
class Dog : Animal {
    func makeNoise() {
        print("Woff!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

// 11.Optionals summary
// One: Optionals let us represent the absence of a value in a clear and unambiguous way.
// Two: Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
// Three: You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
// Four: Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
// Five: You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
// Six: Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
// Seven: You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
// Eight: If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
// Nine:You can use typecasting to convert one type of object to another.
