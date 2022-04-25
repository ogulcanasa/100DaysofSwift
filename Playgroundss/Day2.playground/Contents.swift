import UIKit

// 1.Arrays  (If we want to store many values, we will often use arrays -> [String] [Int] [Double] [Bool])

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// 2.Sets (Sets are "unordered" and cannot contain duplicates.)

let color = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","blue","green"])

// 3.Tuples (We can't add or remove items from a tuples -> fixed in size / We can't change a type of items in a tuple)

var name = (first: "Taylor", last: "Swift")
name.0
name.last

// 4.Arrays vs sets vs tuples

let adress = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric","Graham","Terry","Terry"]

// 5.Dictionaries ( [String: Double] [String: String] [String: Bool [Int: String] )

let heights = ["Taylor Swift": 1.78 , "Ed Sheeran": 1.73]
heights["Taylor Swift"]

// 6.Dictionary default values

let favoriteIceCream = ["Paul":"Chocolate","Sophie":"Vanilla"]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

// 7.Creating empty collections

var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

// 8.Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// 9.Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// 10.Enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

// 11.Complex types: Summary
// One: Arrays, sets, tuples and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends one the behaviour you want.
// Second: Arrays store items in the order you add them, and you access them using numerical positions.
// Three: Sets store items without any order, so you can't access them using numerical positions.
// Four: Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
// Five: Dictionaries store items according to a key, and you can read items using those keys.
// Six: Enums are a way of grouping related values so you can use them without spelling mistakes.
// Seven: You attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
