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
var gpa : Double = 4.20
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

print(true && false) // false
print(!false) // true
print(false || true) // true
print(true && (false || !true)) // false


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
} else if age == 19 {
  print("can drink in South Korea")
} else if age == 18 {
  print("can drink in Hong Kong")
} else  {
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

print("I like the character Choi Ung the most")
print("I like the character Kook Yeon Su the most")
print("I like the character Kim Ji Ung the most")
print("I like the character NJ the most")
print("I like the character Ga Eun Ho the most")

print("My favorite character is Choi Ung")
print("My favorite character is Kook Yeon Su")
print("My favorite character is Kim Ji Ung")
print("My favorite character is NJ")
print("My favorite character is Ga Eun Ho")



func addOne(num : Int) -> Int {
  return num + 1
}
let four : Int = addOne(num : 3)
print(four)

func printFavorite(name: String, age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}
printFavorite(name: "Choi Ung", age: 18)
printFavorite(name: "Kook Yeon Su", age: 18)

func printFavorite(character name: String, age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}
printFavorite(character: "Choi Ung", age: 18) // Much more readable!

func printFavorite(_ name: String,_ age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}

printFavorite("Choi Ung", 18) 
// A little more familiar with people who've coded in other languages

func findHighestCommonFactor(for num1: Int, and num2: Int) -> Int {
  return 1
}

findHighestCommonFactor(for: 18, and: 36)

var optionalInt : Int? = nil
optionalInt = 2

// Method 1 of unwrapping optionals: unwrapping
func getGrade(score : Int?) -> String {
  if let unwrappedScore = score {
    if unwrappedScore >= 90 {
      return "A"
    } else if unwrappedScore >= 80 {
      return "B"
    } else if unwrappedScore >= 70 {
      return "C"
    } else if unwrappedScore >= 60 {
      return "D"
    } else {
      return "F"
    }
  } else {
    return "NG" // No Grade 
  }
}

// Method 2 of unwrapping optionals: default value
func getGrade(score : Int?) -> String {
  let unwrappedScore: Int = score ?? -1
  if score == -1 {
    return "NG"
  }
  if unwrappedScore >= 90 {
    return "A"
  } else if unwrappedScore >= 80 {
    return "B"
  } else if unwrappedScore >= 70 {
    return "C"
  } else if unwrappedScore >= 60 {
    return "D"
  } else {
    return "F"
  }
}

// Method 3 of unwrapping optionals: forceful unwrapping
func getGrade(score : Int?) -> String {
  if score == nil {
    return "NG"
  } else {
    let unwrappedScore: Int = score!
    if unwrappedScore >= 90 {
      return "A"
    } else if unwrappedScore >= 80 {
      return "B"
    } else if unwrappedScore >= 70 {
      return "C"
    } else if unwrappedScore >= 60 {
      return "D"
    } else {
      return "F"
    }
  }
}


var choiUngName : String = "Choi Ung"
var choiUngAge : Int = 18
var choiUngOccupation : String = "Artist"
var choiUngCountry : String = "South Korea"

var eugeneName : String = "Eugene Lo"
var eugeneAge : Int = 21
var eugeneOccupation : String = "Student"
var eugeneCountry : String = "US"


// Check if this person is of legal drinking age
func isLegal(age : Int, from country : String) -> Bool {
  if country == "South Korea"{
    if age >= 19 {
      return true
    } else {
      return false
    }
  }
  else if country == "US" {
    if age >= 21 {
      return true
    } else {
      return false
    }  
  } // check for other countries
  return true
}

print(isLegal(age: eugeneAge, from: eugeneCountry))
print(isLegal(age: choiUngAge, from: choiUngCountry))

struct Person {
  var name : String
  var age : Int
  var occupation : String
  var country : String

  func introduce() {
    print("Hello, my name is \(name)")
  }
}

var choiUng : Person = Person(name: "Choi Ung", age: 18, occupation: "Artist", country: "South Korea")

var eugene : Person = Person(name: "Eugene Lo", age: 21, occupation: "Student", country: "US")

// Check if this person is of legal drinking age
func isLegal(person: Person) -> Bool {
  if person.country == "South Korea"{
    if person.age >= 19 {
      return true
    } else {
      return false
    }
  }
  else if person.country == "US" {
    if person.age >= 21 {
      return true
    } else {
      return false
    }  
  } // check for other countries
  return true
}

print(isLegal(person: eugene))
print(isLegal(person: choiUng))

choiUng.introduce()

