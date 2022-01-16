// This is the start of Hack Sprint Session 2
// This is a comment

print("Hello, world!")
print("Hack Sprint Session 2")
print("Nareh"); print("is"); print("cool");

let name = "Choi Ung"
print(name)

name = "Kook Yeon Su"
print(name)

var name = "Choi Ung"
print(name)

name = "Kook Yeon Su"
print(name)

var name : String = "Nareh"
var age : Int = 420
var isGamer : Bool = true

let x : Int = 8
let y : Int = 2

var z : Int = 8 / 2
print(z)

var fact : String = name + " is cool"
print(fact)

// String Interpolation is very convenient
print("\(name) is \(age) years old and is very cool")

print(age == 420) // true
print(age != 420) // false
print (age > 20) // true
print( age < 500) // true



var numbers : Array<Int> = [1, 2, 3, 4]
var characters : [String] = ["Choi Ung", "Kook Yeon Su", "Kim Ji Ung"]

print(numbers[3])
numbers[3] = 29
print(numbers)

print("My favorite character is: " + strings[1])

numbers.append(5)
print(numbers)
print(strings.count)
print(strings[0].count)

print(characters)
characters.insert("NJ", at: 2) // insert NJ
print(characters)
characters.remove(at: 3) // remove kim ji ung
print(characters)

var characters2 : [String] = ["Lee Sol Yi, Ga Eun Ho"]
var allcharacters : [String] = characters + characters2

print(allcharacters)

var occupations : [String:String] = [
  "Kook Yeon Su": "Team Leader",
  "Choi Ung": "Artist",
  "Kim Ji Ung": "Producer"
]

var job : String = occupations["Kook Yeon Su"] ?? "Not Found"

print(job)
occupations["NJ"] = "Singer"
print(occupations)


if age >= 21 {
  print("can drink")
} else if age == 20 {
  print("can drink in Japan, not in the US")
} else {
  print("cannot drink")
}


for x in 1...10 {
  if x == 3 {
    continue
  } else if x == 8 {
    break
  }
  print(x)
}

print(characters)
for char in characters {
  print("My favorite character is " + char)
}

print(occupations)
for (char, job) in occupations {
  print(char + "'s job is " + job)
}

var countdown : Int = 10
while countdown > 0 {
  print("counting down: " + String(countdown))
  countdown -= 1
}

func addOne(num : Int) -> Int {
  return num + 1
}
let four : Int = addOne(num : 3)
print(four)

func printFavChar(char: String, age: Int){
  print("My favorite character is \(char)")
  print("Who is \(age) years old")
}
printFavChar(char: "Choi Ung", age: 18)

func printFavChar(name char : String, age : Int) {
  print("My favorite character is \(char)")
  print("Who is \(age) years old")
}
printFavChar(name : "Choi Ung", age : 18)

func printFavChar(_ char : String,_ age : Int) {
  print("My favorite character is \(char)")
  print("Who is \(age) years old")
}
printFavChar("Choi Ung", 18)


var optionalInt : Int? = nil
optionalInt = 2

// A score of -1 means that the student didn't take the exam
func getGrade(score : Int) -> String? {
  if score == -1 {
    return nil
  }

  if score >= 90 {
    return "A"
  } else if score >= 80 {
    return "B"
  } else if score >= 70 {
    return "C"
  } else if score >= 60 {
    return "D"
  } else {
    return "F"
  }
}
// Method 1 of unwrapping optionals: unwrapping
let grade : String? = getGrade(score : -1)
if let unwrappedgrade = grade {
  print("Your grade is \(unwrappedgrade)")
} else {
  print("You don't have a grade")
}

// Method 2 of unwrapping optionals: providing default value
let grade : String = getGrade(score : -1) ?? "No grade"
print("Your grade is \(grade)")

// Method 3 of unwrapping optionals: forceful unwrapping
let grade : String? = getGrade(score : -1)
if grade == nil {
  print("You don't have a grade")
} else {
  print("Your grade is \(grade!)")
}

// go back to dictionary example