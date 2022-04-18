import UIKit

// 1.Variables and constants
// Variable and constant names must be unique in our code.

var name = "Tim McGraw"
name = "Romeo"

// 2.Types of data
// Double has twice the accuracy of Float.

var cat: String
cat = "Leo"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -123586.783333

var missABeat: Bool
missABeat = false

// 3.Operators

var a = 10.2
a = a + 1.3
a += 1.4

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2
9 % 4
5 != 4

// 4.String interpolation

var name3 = "Oğulcan"
var age2 = 24
"Your name is \(name3), your age is \(age2)"
"Your name is " + name2
"Your age is \(age2) years old. In another \(age2) years you will be \(age2 * 2)"

// 5.Arrays
// [Any] -> Heterogeneous array

var evenNumbers = [2, 4, 6, 8]
var songs : [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

songs[0]
songs[1]

type(of: songs)

var ages = [Int]()
var nums : [Int]

// 6.Dictionaries

var person = ["first": "Taylor",
              "middle": "Alison",
              "last": "Swift",
              "month": "December",
              "website": "taylorswift.com"
            ]
person["middle"]
person["website"]

// 7.Conditional statements

var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

// 8.Loops

for i in 1...5 {
    print("\(i) * 10 is \(i * 10)")
}

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    var str = "\(people[i]) gonna"
    
    for _ in 1...5 {
        str += " \(actions[i])"
    }
    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    
    counter += 1
    
    if counter == 4 {
        break
    }
}

// 9.Switch case

let liveAlbums = 2

switch liveAlbums {
case 0...1:
    print("You're just starting out")
case 2...3:
    print("You're a rising star!")
case 4...5:
    print("You're world famous!")
default:
    print("Have you done something new")
}
