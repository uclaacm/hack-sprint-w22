# Hack Sprint Session 2: Swift Fundamentals

**Date**: January 19, 2022

**Location**: Zoom

**Teachers**: [Alex Xia](https://github.com/khxia)

## Resources

- [Slides](http://links.uclaacm.com/hacksprint22-s1-slides)
- Workshop Recording (Coming Soon!)


## What we'll be learning today
- [Hack Sprint Session 2: Swift Fundamentals](#hack-sprint-session-2-swift-fundamentals)
  - [Resources](#resources)
  - [What we'll be learning today](#what-well-be-learning-today)
  - [- Objects and Classes](#--objects-and-classes)
  - [Quick Intro to Swift](#quick-intro-to-swift)
    - [Printing](#printing)
    - [Note on Semicolons](#note-on-semicolons)
  - [Variables and Types](#variables-and-types)
    - [Values](#values)
    - [Types](#types)
    - [Operators](#operators)
    - [String Interpolation](#string-interpolation)
  - [Conditionals](#conditionals)
    - [`if-else-if-else` chaining](#if-else-if-else-chaining)
  - [Functions](#functions)
    - [Internal and External Parameters](#internal-and-external-parameters)
  - [Optionals](#optionals)
    - [`if-let` syntax](#if-let-syntax)
    - [`??` nil coalescing operator](#-nil-coalescing-operator)
    - [`!` syntax](#-syntax)
  - [Structs](#structs)
    - [Copying Structs](#copying-structs)
  - [Objects and Classes](#objects-and-classes)
---


## Quick Intro to Swift
 
Before I begin, I want to clarify that when we, or other people say "I do iOS development in Swift", what it means is that we are "making iOS applications using the Swift Programming language". If you didn't know, Swift is just another programming language: like C++, JavaScript or Python.

But as you may know, just a programming language by itself is not sufficient enough to create fully fledged applications. So when we say that we're developing in iOS applications in Swift, we're **really** referring the SwiftUI, which is a **framework** that programmers can use to create iOS apps. You can think of SwiftUI as just a bunch of code, written in Swift, that people like us can use, to make applications ... in Swift.

This session is going to be all about diving into the basics of the **Swift Programming language** and making sure that we have the right knowledge to give substance to last week's workshop, as well as to give us the foundation to build into more advanced topics.


### Printing

One of the most important things in this workshop is knowing how to print things. In Swift, we use the `print()` function to print values onto the terminal. 

For example:
```swift
print("Start of Hack Sprint Session 2")
```

Will literally display
```txt
Start of Hack Sprint Session 2
```

onto the terminal.

We can print a variety to different things onto the screen and that will be important for us later.

### Note on Semicolons

In Swift, the use of semicolons is actually optional, meaning that
```swift
print("Nareh is cool")
```
is exactly the same as 
```swift
print("Nareh is cool")
```

However, it **will** matter if we have multiple statements in one line. For example, semicolons are required in the following code:

```swift
print("Nareh"); print("is"); print("cool");
```

In general, the recommended way to use semicolons is:
- Do not use a semicolon when you have one statement in a single line
- Use a semicolon when you have multiple statements in a single line

## Variables and Types

Variables allow us to store data, keep track of it, and use it later on in code.

### Values
In Swift, we use the `let` and `var` keywords to declare variables.

- We use `let` when declaring a variable that **will not** change (this is called declaring a constant)
- We use `var` when declaring a variable that **will** change

Some examples would be:
```swift
let name = "Choi Ung"
print(name) // will print "Choi Ung"

name = "Kook Yeon Su" // Error! Cannot change the variable because it is a constant

var var_name = "Choi Ung" 
print(var_name) // will also print "Choi Ung"

var_name = "Kook Yeon Su" // OK
print(var_name) // will print "Kook Yeon Su"
```

That's fine and all, but usually, we don't declare variables like this. That is because we didn't declare the **type** of the variable.

### Types

A **type** is what we use to classify different kinds of data.

> In Swift, we should almost **always** declare the type of a variable when declaring the variable

Some basic types include:
- `Int` - An integer (whole number)
- `String` - A 'string'/sequence of characters
- `Bool` - Boolean, can either be `true` or `false`
- `Double` - A decimal number

And so when we declare variables now, we use a `: Type` after the variable name to declare its type. For example,

```swift
var name: String = "Nareh"
var age: Int = 420
var gpa: Double = 4.20
var isGamer: Bool = true
```

Note that declaring a type is sort of like setting a rule on that variable to only hold values of that specific type. Sort of like, how when you choose a class in a game, like the swordsman class, the game will not allow you to use bows because those belong to the archer class. For example, this code will fail

```swift
var some_number: Int = 12 // Ok.
some_number = "12" // Not OK
```

### Operators

Now that we know how to define variables in Swift, what do we do with them? Well one thing that we can do with them is to use **Operators**

**Operators** are ways that we can manipulate variables to create new ones, or to modify existing ones. 

Some operators include:
- The arithmetic operators: `+`, `-`, `*`, `/` (these only work on numbers with the exception of `+`, which can also work on `String`)
- Comparison operators: `==`, `!=`, `<`, `>`, `<=`, `>=` (these work on any two variables of the same type)
- Logical operators: `!`, `&&`, `||` (these only work on `Bool`)

> Most of the operators that we introduce here will be very intuitive and should be things that you may have seen before. Do note that there **are** operators that do more complex things and we will see some of these operators later on in this workshop.

Some examples of these operators above are:
```swift
let x: Int = 8
let y: Int = 2

var z: Int = 8 / 2
print(z) // prints 4

print(age == 420) // true
print(age != 420) // false
print(age > 20) // true
print(age < 500) // true

print(true && false) // false
print(!false) // true
print(false || true) // true
print(true && (false || !true)) // false
```

### String Interpolation

It turns out that the `+` operator can be used to concatenate strings as well. 

For example we could do this:
```swift
var name: String = "Nareh"
var age: Int = 420
print(name + " is " + String(age) +  " years old and is very cool")
```

But dealing with all the spaces and `+` is very tedious if we wanted to concatenate lots of variables together. But Swift provides us with a very convenient tool called **String Interpolation** that lets us put variables inside of strings using the `\()` symbol. ie. 

```swift
var name: String = "Nareh"
var age: Int = 420
print("\(name) is \(age) years old and is very cool")
```

## Conditionals

**Conditionals** are how we can contorl how our program/code behaves based on different conditions. In Swift, the simplest way to do so is using `if-else` statements. 

```swift
var age: Int = 30

if age >= 21 { // true
  print("can drink")  // will print "can drink"
} else {
  print("cannot drink")
}


```
`if-else` statements read very much like English. After the `if` keyword, we check some sort of `Boolean` condition, ie. if some statement is true or false. **If** that statement is true, **then** Swift will execute the code inside the curly braces after the `if` statement. **Else**, if the expression is false, then Swift will instead execute the code inside the `else` statement. 

### `if-else-if-else` chaining

Sometimes, we want to check for multiple conditions instead of one. In this case, we will add `else-if` statements. 

```swift
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
```

Again, this code reads very much like English. Swift will sequentially check if each condition is `true`, once it hits a condition that is `true`, it will execute the code in the corresponding curly brace, and exit the entire `if-else` block and continue with execution. 

## Functions

Let's suppose that I want to print my favorite characters from the K-drama: Our Beloved Summer. I would do something like this:

```swift
print("I like the character Choi Ung the most")
print("I like the character Kook Yeon Su the most")
print("I like the character Kim Ji Ung the most")
print("I like the character NJ the most")
print("I like the character Ga Eun Ho the most")
```

That's fine and all, but your hands are already a little tired from all the typing. Then, you realize that you don't like the wording, so you want to change it to use the word "favorite" instead. Ok, so now you need to redo everything.

```swift
print("My favorite character is Choi Ung")
print("My favorite character is Kook Yeon Su")
print("My favorite character is Kim Ji Ung")
print("My favorite character is NJ")
print("My favorite character is Ga Eun Ho")
```

Ok, so you're tired now, but nevertheless it is still doable. Now, you realize that you want to include their ages as well. Well now you're fed up, this is too much and you want a better way to do things. **Functions** allow us to do all of this easily.

**Functions** let us define reusable pieces of code that perform specific pieces of functionality. In our little example, we see that a lot of the code is very repetitive; using functions, we can make it reusable instead.

A function definition in Swift looks like this:
```swift
func addOne(num: Int) -> Int {
    return num + 1
}
```
Where, we define a function called `addOne`, that takes in an argument `num` which is of type `Int`, and its return type is also `Int`. 

> We don't need to specify the return type (using the `-> Type` syntax) in functions that don't return anything.

Then, we can call a function like so:
```swift
var four: Int = addOne(3)
var five: Int = addOne(four)
```

> Again, we don't need to assign the return value to something when the function doesn't return anything

Going back to our example, we can simply turn our long code into a simple function.

```swift
func printFavorite(name: String, age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}
```

Now, we can just call our functions like so:
```swift
printFavorite(name: "Choi Ung", age: 18)
printFavorite(name: "Kook Yeon Su", age: 18)
```
Note that we need to specify the parameter name with the `:` syntax.

### Internal and External Parameters

Swift function parameters are nice, but they have some problems that some people may have:
- Sometimes, a function parameter name makes more sense when you read it outside of a function, but sometimes it makes more sense when you read it inside of the function.
- Sometimes, we are lazy and don't want to specify the parameter name as we call a function.

There is a cool feature that Swift provides called internal and external parameters, meaning that the external parameter name that others use when they call the function, is different from the internal parameter name that is known to the function. The way we define these parameter names is to simply write the parameter name in the following form: `external internal : Type`. 

For example, we would change our function to this:

```swift
func printFavorite(character name: String, age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}
```
Notice that we have `character name: String`. What this means is that `character` is the parameter known by the outside world, the **external parameter**, and `name` is the parameter known only to the function, the **internal parameter**. Now, when we call the function, it will look like this:

```swift
printFavorite(character: "Choi Ung", age: 18) // Much more readable!
```

Now, if we replace the **external parameter** name with an `_`, it means that there **is** no external parameter name, which means we can omit the parameter name when calling the function:

```swift
func printFavorite(_ name: String,_ age: Int){
  print("My favorite character is \(name)")
  print("Who is \(age) years old")
}

printFavorite("Choi Ung", 18) 
// A little more familiar with people who've coded in other languages
```

You will see this feature all over Swift code, and one of the biggest benefits is that it makes the code much more readable in plain English, yet still keeps the distinction when inside and outside the function. For example, we could define something like:

```swift
func findHighestCommonFactor(for num1: Int, and num2: Int) -> Int {
  return 1
}

findHighestCommonFactor(for: 18, and: 36)
```

## Optionals

Sometimes, we want a value to represent the **absence of a value**. This is called the `nil` value in Swift. 

> This `nil` value is very similar to the `null` value you see in other languages like JavaScript.

However, a `nil` value is very **unsafe**. In other languages, trying to access or do something with a `nil` value will crash the program (JavaScript, Python, C++). Hence, Swift introduced optional values to **force** programmers to code in a safe way. 

If a value is an `Optional`, it means that it either has a value, or it has the `nil` value. A common analogy used is Schrodinger's Cat, where a box with a cat inside of it is either dead or alive, but you won't know until you open it and look. For us, the `Optional` value is like the box, where it either contains some valid value like a `String` or `Int`, or it contains a `nil` value. 

In Swift, we add an `?` at the end of the type of a variable to declare it an optional. 

```swift
var optionalNum: Int? = 12
optionalNum = nil
```

> How do I use an `Optional`?

Note that we can now no longer directly use `optionalNum` as if it was an `Int`, we need to unwrap it. 

There are several ways to unwrap `Optionals`:
- Using the `if let` syntax to unwrap
- Using `??` (nil coalsecing operator) to provide a default value
- Using `!` syntax to forcefully unwrap the value

Let's see this using an example.
Let's say I wanted to write a function called `getGrade()` that takes in a student's score and returns a grade. It may look something like this:

```swift
// if score is -1 then student didn't take the exam
func getGrade(score: Int) -> String {
    if score == -1 {
        return "NG"
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
```

But this does not make much sense. If a student didn't take exam, using a `-1` as a score does not mean anything - a `-1` score doesn't exist. It would make much more sense if the student's score was `nil` instead. Hence, you change the `score` parameter to `Int?` and use the `if let` syntax to unwrap it. 

### `if-let` syntax
```swift
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
```

Here, the `if let` does two things, first, it checks if the value in `score` is a `nil` or not. If it is a `nil` value then the entire statement evaluates to `false` and the `else` statement is executed. However, if the value is not `nil`, then it will assign that value to `unwrappedScore` and then return `true` so that the code inside the `if` statement is executed.

### `??` nil coalescing operator

```swift
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
```

In this case, we are using `??` to provide a default value for the `unwrappedScore` value. Using `-1` is fine here, because only code inside of the function is aware of it, other people calling the function don't need to worry about it.

### `!` syntax

```swift
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
```

Here, we just simply use the variable followed by a `!` value to forcefully unwrap the Optional. We are basically telling Swift: "Hey, I know what I am doing and am 100% sure that what I am forcefully unwrapping will never be a `nil` value, so it's ok to unwrap me!". 

Generally, this is considered unsafe so we won't be using this much.


## Structs
Structs allow us to group related data together. Instead of having separate variables for something all related like this:

```swift
var choiUngName : String = "Choi Ung"
var choiUngAge : Int = 18
var choiUngOccupation : String = "Artist"
var choiUngCountry : String = "South Korea
```

It would be more convenient, to have the notion of a "Person", and every "Person" will have a name, age, occupation, and country. `Structs` allow us to do that.

```swift
struct Person {
  var name : String
  var age : Int
  var occupation : String
  var country : String

  func introduce() {
    print("Hello, my name is \(name)")
  }
}
```

In a Struct, the variables that we define are called **properties** (ie. name, age, occupation...), and the functions defined within a Struct are called **methods** (ie. introduce()). **methods** can access its own **properties**. 

Now, we can just create an instance of the Struct like so:
```swift
var choiUng: Person = Person(
    name: "Choi Ung", 
    age: 18,
    occupation: "Artist",
    country: "South Korea"
)
```

Now, if we wanted to access properties or call the methods within a Struct, all we need to do is use the `.` operator.

```swift
print(choiUng.name) // prints "Choi Ung"
print(choiUng.age + 20) // prints 38
choiUng.introduce() // prints "Hello, my name is Choi Ung"
```

### Copying Structs

When you create a new Struct based on another Struct, Swift will **copy** all the properties and methods into a completely new instance using something called *copy-on-write* (don't worry if you don't know what this means). 

Hence, the following code will create a completely new copy of `choiUng`.

```swift
var choiUngCopy: Person = choiUng
choiUngCopy.name = "not Choi Ung"
print(choiUng.name) // prints "Choi Ung"
print(choiUngCopy.name) // prints "not Choi Ung"
```

## Objects and Classes

Classes in Swift are a very similar concept to Structs. However, they have some differences:

- You need to write your own member initializer for the class, called an init function, or constructor
- You can define classes as being based off of other classes, adding new things if you want (This is called inheritance)
- Creating an instance of a class is called an object. 
- Copying objects does not actually "copy" the data
- We need to use the `self` object to refer to an object's own properties and methods.

Creating a class looks something this:
```swift
class Person {
    var name: String
    var age: 18
    var occupation: String
    var country: String

    init(name: String, age: String, occupation: String, country: String) {
        self.name = name
        self.age = age
        self.occupation = occupation
        self.country = country
    }

    func introduce() {
        print("Hello, my name is \(self.name)")
    }
}
```

Currently, with what we have defined, the usage of the `Person` class is exactly the same as the Struct version:

```swift
var choiUng: Person = Person(
    name: "Choi Ung", 
    age: 18,
    occupation: "Artist",
    country: "South Korea"
)

print(choiUng.name) // prints "Choi Ung"
print(choiUng.age + 20) // prints 38
choiUng.introduce() // prints "Hello, my name is Choi Ung"
```


