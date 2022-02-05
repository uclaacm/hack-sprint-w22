# Hack Sprint Session 4: Advanced Views

**Date**: Feburary 2, 2022

**Location**: Zoom

**Teachers**: [Nareh Agazaryan](https://github.com/nareha), [James Wu](https://github.com/jamesmwu)

## Resources

- [Slides](http://links.uclaacm.com/hacksprint22-s4-slides)
- Workshop Recording (Coming Soon!)

## What we'll be learning today
- [Arrays and Lists](#arrays-and-lists)
  - [Arrays](#arrays)
  - [Lists](#lists) 
  - [Passing an Array into a List](#passing-an-array-into-a-list)
- [NavigationView, NavigationLinks](#navigationview-and-navigationlinks)
  - [NavigationView](#navigationview)
  - [NavigationLinks](#navigationlinks)
- [Protocols](#protocols)
- [ScrollView](#scrollview)
- [MVVM](#mvvm)

## Arrays and Lists
### Arrays
An array is a Swift data type made available to us. It holds data that we can specify or input, and there are all sorts of ways to modify an array as well. Howeever, it can only hold one type of data-- so if the array is a String type, then it can only hold strings for example.

Some ways to declare an array include:
```swift
//Creates an array with three String elements
let chipmunks = ["Alvin", "Simon", "Theodore"]

//Creates an empty array of Int type.
var chipmunks: [Int] = []

```

### Lists
Lists, on the other hand, are a SwuiftUI element. It allows us to make a list actually pop up on the screen of our application, as opposed to storing data like an array does. A list can be declared as such:
```swift
//Basic List declaration
List {

}
```
As an example, the code:
```swift
List {
  Text("Item 1")
  Text("Item 2")
}
```
Will create a list of two things-- the first one being a text view saying "Item 1", and the second one being a text view saying "Item 2".

### Passing an Array into a List
We can pass arrays into lists given that the array is made of instances. To break this down, think of it like this-- we'd first create an array of instances, the definition which should be in a structure somewhere else in the code, and then we'd pass the array into the list by inserting the array as a parameter and including the instance as a closure. 

As an example, imagine we were given an array "chipmunkList" made of "Chipmunk" instances. Passing the array would be done like this:

```swift
List (chipmunkList) {Chipmunk in
  Text(Chipmunk.name)
}
```

What this would do is create a list with every item in the array "chipmunkList" as an item on the list-- more specifically, the name of each Chipmunk instance as an item on the list.

## NavigationView and NavigationLinks
### NavigationView
Navigation Views allow us to go into other views in a sequential path. Think of it like changing screens on an app-- on Instagram, for example, going to the profile screen from the home screen is a Navigation View! 

```swift
NavigationView{}
```
Everything inside a navigation view's brackets is what is held in that "current" view. What this means is once the view changes, if I put-- for example, a Text element-- inside the initial navigation view, that text element would disappear after the view changed.

### NavigationLinks
Navigation links are the actual method of changing views. While a navigation view is like a container to hold everything on that current screen, it is only through clicking a navigation link is the user actually sent to a different screen. A navigation link basically tells the program where to go, and is declared as such:

```swift
NavigationLink("Click Me!", destination: OtherView())
```
--note that "Click Me!" and OtherView() are just placeholders for this example. What would this look like? Well, on our app, we'd see the text "Click Me!". Once we clicked that text, the screen would change to another screen defined in the code as OtherView(). Navigation links are always stored inside Navigation views. Overall, this allows us to enable more features and better control user experience in our app.

## Protocols
If you look at the demo, you may notice something odd with our Chipmunk struct. We have it declared like the following:

```swift
struct Chipmunk : Identifiable
```

Identifiable is a **protocol**. Protocols are blueprints with functions, variables, and other requirements for a specific functionality. If you've ever coded in C++, you might think of it like the type of content that you would put into a `.h` file, with all the declarations but without the actual implementations. Protocols work very similarly!

We say something **conforms** to a protocol when it follows the rules of the protocol. That is, it follows the blueprint and has all of the elements of that protocol. For example, think of a real blueprint. There is a general outline of what the building should be and what it should contain, but the specifications of *how* it's built are left up to the person building that. Protocols are similar in that way. Our Chipmunk struct can implement the `Identifiable` protocol in any way that would be appropriate.

A protocol can be created really similarly to how some of our other Swift elements have been created. Of course, you're not restricted to only the ones provided by SwiftUI! You can create your own in the following manner.

```swift
protocol SomeProtocol {
  // protocol definition goes here
}
```

As we saw with Identifiable, we can then apply a protocol (make a struct or class *conform* to our protocol) similar to how we identify a type for variables.

```swift
struct HackSprintAttendees: SomeProtocol {
  // all protocol functions and variables
      get implemented here
}
```

Now let's get back into Identifiable. What does that protocol tell us to conform to? Identifiable is a protocol that ensures that any structure, class, etc. that conforms to it has uniqueness. To conform to the Identifiable protocol, you must have a variable called `id`.

If we don't have the required variables that are blueprinted in the protocol, we are not conforming to the protocol. For the Chipmunk struct, we ensure that each chipmunk has an id with `UUID()`, which creates a universally unique id. The implementations of this function are not too important, but whjenever the protocol calls for an id, this is what we will use to allow Swift to create an id that's unique to that Chipmunk instance.

If you've seen Inhertiance with classes before, you might be confused on what the difference between inhertiance and protocols is. If you've never heard of this term before, don't worry! Just stay tuned for when we get back into protocols.

Inheritance is similar in the fact that you will use the same (and maybe more) variables in functions as the parent, but the relationship is different. If a child class *inherits* properties from a parent class, it *is* a type of that class. In comparison, protocols are kind of like a certificate of authentication-- you *aren't* an "Identifiable" (whatever that would mean). It means you have certain qualifications to be considered Identifiable.

This isn't the first time we've seen a Protocol applied! Does this look familiar?

```swift
struct ContentView: View
```

That's right! ContentView is actually conforming to a protocol called `View`!

You may be asking why we've mentioned this at all, or why we would need to know this. That's a totally valid question! Actually, for the way that we use List in our code, we need each item to be unique. This is a dynamic view, meaning the content is not directly put in the curly braces, so our code doesn't know what will go there until we run the app. SwiftUI needs a way to tell each item apart in order to ensure all of them are displayed properly, or else it could be unpredictable (the behavior of our code would be "undefined"). The protocol is promising List that we're making each item unique, so it won't have any issues with getting each item in our Array.

## ScrollView
If we have a lot of text going off of the screen, SwiftUI will put a `...` and not let us view the rest! How can we maybe *scroll* down to see the rest (hint hint)?

We can mark an entire region as **scrollable**, allowing us to view more content that what would fit in the screen using **ScrollView**! ScrollView is a container view which marks anything inside of is as *scrollable*, adding a region where we can scroll up and down inside.

We can mark an area as scrollable by the following.

```swift
ScrollView {
  Text("This isn't very long")
  Text("But it is still scrollable!")
}
```

You can create horizontal scrolling in a very similar way.

```swift
ScrollView(.horizontal) {
  Text("This isn't very long")
  Text("But it is still scrollable!")
}
```

## MVVM
Having your code all in one file can get really long and messy *very* fast. That's why it is often recommended to add some structure to the code. Last session, we talked a bit about extracting views. This is an extension of that with a specific form. In fact, last session and this session's demos use this structure!

**MVVM** stands for **Model, View, ViewModel**. It's one way of organizing code by the functionality of that code.

### View
Anything in Views is code that formats the data (using SwiftUI to display it on the screen). Data, such as structs, functions, Arrays, etc. aren't written here, but may be called/used by the Views and SwiftUI components. This folder doesn't just have to be ContentView, either. We can abstract some of the Views into smaller pieces, such as different screens, or some buttons or components that require a lot of modifications and may be used in multiple places!

### Model
Things that go in Model hold the data, and don't have much to do with the actual screen visuals. You may think of this as the "behind-the-scenes" logic. Ideally, the items in this folder would be files with structs are large logic parts of the code. In the last session, the Game struct was a Model! In this demo, it is the Chipmunk struct.

### ViewModel
ViewModel may be thought of as the link between the Model and the View. Implementations (instances) of structs outlined in the Model, or functions that the View can use to update the things on the screen, or read user input would ideally be here.

We may see some more robust use cases in future workshops!

Please reference the demo folder for this session for an example of this code structure!
