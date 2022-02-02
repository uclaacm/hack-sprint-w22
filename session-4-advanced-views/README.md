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
