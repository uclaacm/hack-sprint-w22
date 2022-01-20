let apple: String = "pen"
let pen: String = "pineapple"
let pineapple: String = "apple"

print("penpine\(pineapple)\(apple)\(pen)")

// penpineapplepenpineapple +
// penpineappleapplepen
// This code is erroneous
// penpineapplepineapplepen


var text: String = "Welcome to my app"
var userCount: Int = 5
var title: String = text
text = userCount

print(text)

// "Welcome to my app"
// "Hackdge"
// This code is will result in an error +
// 5

let score: Int = 40
if score >= 50 {
    print("You got the top prize")
} else if score >= 40 {
    print("You got the second prize")
} else if score >= 30 {
    print("You got the third prize")
} else {
    print("You got no prize")
}

// You got the top prize
// You got the second prize +
// You got the third prize
// You got no prize

func calculateArea(w width: Double, l length: Double) -> Double {
    return w * l 
}
print(calculateArea(w: 3, l: 4))

// Passed in two Ints as argument when function expected Double
// Function used external parameter name instead of internal parameter name +
// Function did not return anything
// Nothing is wrong with the following function

func returnOptional() -> String? {
    return nil
}

var str = returnOptional() ?? "No result"
print(str)

// "nil"
// nil
// "No result" +
// This will result in an error


