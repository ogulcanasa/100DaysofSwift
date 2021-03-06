import UIKit

// 1.Creating basic closures

let driving = {
    print("I'm driving in my car")
}
driving()

// 2.Accepting parameters in a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

// 3.Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// 4.Closures as parameters

let driving3 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving3)

// 5.Trailing closure syntax

func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2() {
    print("I'm driving in my car")
}

travel2 {
    print("I'm driving in my car")
}
