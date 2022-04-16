import UIKit

// 1.Creating your own classes (Classes never come with a memberwise initializer.)

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// 2.Class inheritance (For safety reasons, Swift always makes you call super.init() from child classes – just in case the parent class does some important work when it’s created.)

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poppy2 = Poodle(name: "Poppy2")
poppy2.name

// 3.Overriding methods (Swift requires us to use override func rather than just func when overriding a method.)

class Cat {
    func makeNoise() {
        print("Meow!")
    }
}

class Siamese: Cat {
    override func makeNoise() {
        print("Meowwwwww!")
    }
}

let kitten = Siamese()
kitten.makeNoise()

// 4.Final classes (Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it.)

final class Dog2 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// 5.Copying objects (When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.)

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// 6.Deinitializers (Deinitializers – code that gets run when an instance of a class is destroyed.)

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...2 {
    let person = Person()
    person.printGreeting()
}

// 7.Mutability

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)

// 8.Classes summary
// One: Classes and structs are similar, in that they can both let you create your own types with properties and methods.
// Two: One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
// Three: You can mark a class with the final keyword, which stops other classes from inheriting from it.
// Four: Method overriding lets a child class replace a method in its parent class with a new implementation.
// Five: When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
// Six: Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
// Seven: Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
