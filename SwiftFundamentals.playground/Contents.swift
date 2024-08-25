import UIKit

// * Variable

var highScore = 0

highScore = 50
print(highScore)

// * Constant

let score = 5

//score = 40   //cannot assign

print(score)

// * Array

//var array = []  //type declaration is needed to create empty array

var array: [Int] = [] 

var ages = [22, 11, 43, 56, 98]

ages.count
ages.first
ages.last
ages[2]
ages.append(100)
ages.insert(38, at: 1)
//ages.sort()
//ages.reverse()
//ages.shuffle()
print(ages)


// * Set

var emptySet: Set<Int> = []   //empty set

var set: Set<Int> = [1, 1, 3, 3, 4, 5, 5]
print(set)

var arr = [22, 11, 33, 22, 11];
var arrSet = Set(arr)
print(arrSet)
arrSet.contains(11)

arrSet.insert(101)
print(arrSet)


// * Dictionary

let dictionary: [String: String] = [:]   //empty dictionary

let devices: [String: String] = [
    "phone": "OnePlus 9R",
    "laptop": "Macbook Air M1",
    "headphones": "OnePlus Bullets Wireless Z"
]

devices["laptop"]

// * Function

func printInstuctorsName(name: String) {
    print("Instructors Name:", name)
}

printInstuctorsName(name:"Sean Allen")

func add(firstNum: Int, to secondNum: Int) -> Int {
    let sum = firstNum + secondNum
    return sum
}

var ans = add(firstNum: 12, to: 13)
print(ans)

// * If Else

var isDarkModeOn = true

if isDarkModeOn {
    print("Dark Mode is on")
} else {
    print("Dark Mode is off")
}

var myHighScore = 444
var yourHighScore = 334

if(myHighScore > yourHighScore) {
    print("I win")
}
else {
    print("You win")
}

// * For Loop

let fabFour = ["Kohli", "Smith", "Root", "Williamson"]

for batsman in fabFour {
    print(batsman)
}

for i in 0...5 {
    print(i)
}

var randomInts: [Int] = []

for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts)

// * Enum

enum Phones: String {
    case iPhone15Pro = "Apple's Flagship Phone"
    case SamsungS24Ultra = "Samsung's Flagship Phone"
    case Pixel9Pro = "Google's Flagship Phone"
    case GalaxyZFold6 = "Samsung's Flagship Folding Phone"
}

func getInformation(about phone: Phones) {
    print(phone.rawValue)
}

getInformation(about: .SamsungS24Ultra)

// * Switch Statements

enum Smartphones: String {
    case iPhone15Pro
    case SamsungS24Ultra
    case Pixel9Pro
    case GalaxyZFold6
}


func getInformationSwitch(about phone: Smartphones) {
    switch phone {
    case .iPhone15Pro:
        print("Apple's Flagship Phone")
    case .SamsungS24Ultra:
        print("Samsung's Flagship Phone")
    case .Pixel9Pro:
        print("Google's Flagship Phone")
    case .GalaxyZFold6:
        print("Samsung's Flagship Folding Phone")
    }
}

getInformationSwitch(about: .Pixel9Pro)

func determinePlayerLeague(rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in BRONZE league")
    case 50..<100:
        print("You are in SILVER league")
    case 100..<200:
        print("You are in GOLD league")
    default:
        print("You are in a league of your own.")
    }
}

determinePlayerLeague(rank: 180)

// * Operators

let valueOne = 2
let valueTwo = 5

let sum = valueOne + valueTwo
let diff = valueOne - valueTwo
let product = valueOne * valueTwo
let div = valueOne / valueTwo   //0

//let valueOne: Double = 2
//let valueTwo: Double = 5
//
//let div = valueOne / valueTwo   //0.4

let remainder = valueTwo % valueOne

valueOne == valueTwo
valueOne != valueTwo

var flag = true

if(valueOne != valueTwo && flag) {
    print("The values are not equal")
}

//String concatenation
let greeting = "Hello"
let name = "Tejas"
print(greeting + " " + name)

//Array concatenation
let agesYoung = [18, 21, 20]
let agesOld = [67, 89]
let allAges = agesYoung + agesOld
print(allAges)

// * Optionals

var Ages: [Int] = [45]

// Optionals Unwrapping

// 1. Using if let

if let oldestAge = Ages.last {
    print("The oldest age is \(oldestAge)")
}
else {
    print("There is no oldest age. You must have no ages.")
}

// 2. Using nil-coalescing operator (??)

//let oldestAge = Ages.last ?? 999

// 3. guard statement

@MainActor func getOldestAge() {
    guard let oldestAge = Ages.last else {
        return
    }
    
    print("\(oldestAge) is oldest age")
}

getOldestAge()

// 4. Force Unwrap

let oldestAge = Ages.last!


// * Class

class Developer {
    var name: String
    var jobTitle: String
    var exp: Int
    
    init(name: String, jobTitle: String, exp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.exp = exp
    }
    
    func speakName() {
        print(name)
    }
}

let sean = Developer(name: "Sean", jobTitle: "iOS Engineer", exp: 5)

sean.name
sean.jobTitle
sean.exp
sean.speakName()

//class Developer {
//    var name: String?
//    var jobTitle: String?
//    var exp: Int?
//    
//    init() {}
//}
//
//let john = Developer()
//
//john.name = "John"
//john.jobTitle = "iOS Engineer"
//john.exp = 10

// * Inheritance

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func printFavoriteFramework() {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        }
        else {
            print("I don't have favorite framework")
        }
    }
    
    override func speakName() {
        print("\(name) - \(jobTitle)")
    }
}

let ryan = iOSDeveloper(name: "Ryan", jobTitle: "iOS Developer", exp: 2)

ryan.favoriteFramework = "ARKit"
ryan.printFavoriteFramework()
ryan.speakName()

// * Struct

struct Programmer {
    var name: String
    var jobTitle: String
    var exp: Int
}

var tony = Programmer(name: "Tony", jobTitle: "Programmer", exp: 4)

var joe = tony
joe.name = "Joe"
tony.name

// * Extension

extension String {
    func removeWhiteSpace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let string = "A B C D E"
print(string)                       //A B C D E
print(string.removeWhiteSpace())    //ABCDE
