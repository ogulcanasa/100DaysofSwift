import UIKit

// A closure is a special type of function without the function name.
// 1.Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!\n")
}
          
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// 2.Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!\n")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// 3.Shorthand parameter names

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!\n")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
    "I'm going to \($0) in my car"
}

// 4.Closures with multiple parameters

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!\n")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour."
}


// 5.Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2 = travel()("London")

// 6.Closures summary
// One: You can assign closures to variables, then call them later on.
// Two: Closures can accept parameters and return values, like regular functions.
// Three: You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
// Four: If the last parameter to your function is a closure, you can use trailing closure syntax.
// Five: Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
// Six: If you use external values inside your closures, they will be captured so the closure can refer to them later.
