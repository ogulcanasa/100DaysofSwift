import UIKit

// 1.Arithmetic Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let differentce = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// 2.Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// 3.Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// 4.Comparison operators

let score2 = 6
let score3 = 4

score2 == score3
score2 != score3

"Taylor" > "Swift"

// 5.Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard == 2 {
    print("Aces a lucky!")
} else {
    print("Regular cards")
}

// 6.Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// 7.The ternary operator

let firstNumber = 11
let secondNumber = 10
print(firstNumber == secondNumber ? "Numbers are the same" : "Numbers are different")

// 8.Switch statements (If we want execution to continue on to the next case, use the fallthrough keyword.)

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// 9.Range operators

let score5 = 85

switch score5 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// 10.Operators and conditions summary
// One: Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
// Second: There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
// Three: You can use if, else, and else if to run code based on the result of a condition.
// Four: Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
// Five: If you have multiple conditions using the same value, it’s often clearer to use switch instead.
// Six: You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
