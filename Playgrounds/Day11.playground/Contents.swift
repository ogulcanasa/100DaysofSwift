import UIKit

// 1.Protocols (Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.)

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// 2.Protocol inheritance

protocol Payable {
    func calculateWage() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// 3.Extensions (Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.)

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

//(Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead.)

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var num = 12
num.isEven

extension String {
    func uppo() -> String {
        return self.uppercased()
    }
}

var simpleWord = "abcdefghijklmn"
simpleWord.uppo()

// 4.Protocol extensions (Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly.)

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(self.count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// 5.Protocol-oriented programming

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "2226482")
twostraws.identify()

// 6.Protocols and extensions summary
// One: Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
// Two: You can build protocols on top of other protocols, similar to classes.
// Three: Extensions let you add methods and computed properties to specific types such as Int.
// Four: Protocol extensions let you add methods and computed properties to protocols.
// Five: Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
