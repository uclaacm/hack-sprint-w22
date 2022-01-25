# Hack Sprint Session 3: State and Bindings

**Date**: January 26, 2022

**Location**: Zoom

**Teachers**: [Katelyn Yu](https://github.com/katelynsyu), [Eugene Lo](https://github.com/euglo)

## Resources

- [Slides](https://docs.google.com/presentation/d/1kO9elgFystbMWY24HPOouiGw71A2-PFp7uG9zgpywNA/edit?usp=sharing)
- Workshop recording (coming soon)

## What we'll be learning today
- [Views and View Modifiers](#views-and-view-modifiers)
  - [Review Views](#review-views)
  - [New Views](#new-views)
  - [Text View Modifiers](#text-view-modifiers)
  - [Image View Modifiers](#image-view-modifiers)
  - [Button View modifiers](#button-view-modifiers)
  - [Safe Area](#safe-area)
- [State and Bindings](#state-and-bindings)
  - [State](#state)
  - [Bindings](#bindings)
  - [Button and Actions](#button-and-actions)

## Views and View Modifiers
### Review Views
Previously, we covered that views are essentially the building blocks that allow you to add content to the screen until it is in the state you desire. Some common views we have gone over are **Text** and **Image**.

Text displays lines of text to the screen. The syntax is:
```swift
Text("Hi, my name is Shirokuma, and I like hot tea.")
```
This writes the words "Hi, my name is Shirokuma, and I like hot tea." to the screen of your app. (Shirokuma, for those of you who don't know, is a Sumikkogurashi character-- a shy polar bear who migrated south to avoid the cold and feels most calm while drinking hot tea in a corner.)

Image places the image of your choice from the *Assets* folder, which is provided by default by Xcode, onscreen. The syntax is:
```swift
Image("ShirokumaAndTea")
```
This will display the image in your Assets folder that is named "ShirokumaAndTea" on the screen.

We have also covered VStack:
```swift
VStack {
  View1
  View2
}
```
which allows us to align views vertically down the screen, and HStack:
```swift
HStack {
  View1
  View2
}
```
which allows us to organize views horizontally across the screen.

### New Views
Now, let's talk about some other common views, starting with **ZStack**--and you thought you were done with stacks ;)

ZStacks allow you to stack views in front of and behind each other in a pile (stacking up in the z-direction). You can imagine z-direction to be coming directly towards you off of the screen, while HStack and VStack, are in the left/right and up/down directions, respectively. The first view listed will be in the way back, and the last view will be the frontmost view of the pile. For example,
```swift
ZStack {
  Image("ShirokumaAndTea")
  Text("Hi, my name is Shirokuma, and I like hot tea.")
}
```
This ZStack will output the text "Hi, my name is Shirokuma, and I like hot tea." layered on top of the image "ShirokumaAndTea".

Ok. We have aligned our views, but they're so oddly scrunched up on screen. How can we fix this so that views can breathe and be farther apart? **Spacers**.

In a stack (HStack or VStack), you can use a Spacer to (guess what?) *space* things out. A Spacer takes up as much space as possible on the screen, so
```swift
VStack {
  View1
  Spacer()
  View2
  View3
}
```
shoves View1 all the way to the top of the screen and pushes View2 and View3 to the bottom.
Spacers happen to work well together, so you can have multiple in a stack, making something like
```swift
VStack {
  View1
  Spacer()
  View2
  Spacer()
  View3
}
```
This results in View1, View2, and View3 being equidistant from each other, with View1 at the top of the screen, View2 midway down, and View3 at the bottom. You can rearrange the spacers to organize your views any way you'd like.

One last view to cover today: buttons. Buttons are very self-explanatory--they're views that the user can click on onscreen that will allow an action to occur. We'll talk about actions a little later. For now, the syntax to create a button is:
```swift
Button (action: {
  //action
  }) {
    Text("Drink Tea")
}
```
This creates a button that has the text "Drink Tea" on it.

So... now that we know how to make things show up, how to align said newly-spawned views, and how to space them out all fancy, how do we make them look *pretty*?

### Text View Modifiers
View modifiers. View modifiers are the answer to making things look pretty. Previously, we discussed that view modifiers tend to follow the format
```swift
View
  .modifier()
  .modifier()
```
Each modifier will style the view in a specific way.

Let's go over some text view modifiers. During session 1, we covered the `.bold()`, `.italic()`, `.foregroundColor()`, and `.background()` view modifiers, which bold, italicize, color the text, and color the background of the text, respectively.

Some new modifiers pertaining to the Text view are `.tracking()`, `.font()`, and `.lineSpacing()`. These view modifiers will allow you to add spacing between characters, change the font style, and change the line height.

### Image View Modifiers
Now for images, we've used `.resizable()`, `.frame()`, and `.scaledToFit/Fill()` to make our images the size we want onscreen. Some new view modifiers that might be of interest are `.cornerRadius()`, `.shadow()`, and `.border()`. `.cornerRadius()` rounds the edges of the view to the radius that you specify (higher corner radius means a rounder view), `.shadow()` creates a drop shadow of your color and size preference, and `.border()` creates a colored border around your image.

Additionally for images, you can use the `.overlay()` modifier. `.overlay()` layers another view on top of the view you currently have. For example, if you wanted to create a circular image...
```swift
Image("ShirokumaAndTea")
  .overlay(Circle())
```
you could use overlay to do so. You can also overlay views that are other shapes, such as `Ellipse()`, `Rectangle()`, `Capsule()`, etc.

These shapes can have their own view modifiers like `.fill()` and `.stroke()`/`.strokeBorder()`. `.fill()` fills the shape with the color of your choice. `.stroke()` and `.strokeBorder()` add an outline of your specified color and line width to the shape.

### Button View Modifiers
Next on the view modifiers list, we'll talk about buttons. Buttons are easy to talk about now that we've covered the other views and view modifiers. You can use text view modifiers like `.tracking()`, `.font()`, and`.foregroundColor()` in order to style the buttons's text. `.background()` changes the color of the button itself. You can use image view modifiers like `.cornerRadius()`, `.shadow()`, and `.border()` on buttons as well.
```swift
Button(action: {
  //action
  }) {
    Text("Drink Tea")
      .font(.headline)
      .bold()
      .tracking(3)
      .foregroundColor(Color.white)
}
.padding()
.background(Color.black)
.cornerRadius(15)
```
This code will create a button with text "Drink Me" displayed on it. The text is styled in the headline font format, is bolded, has letter spacing of 3, and is white. The button itself will have padding (the boundaries of the button will be extended beyond the text itself), it will be black, and it will have rounded edges with corner radius of 15.

### Safe Area
One last thing about views and view modifiers: the entire device screen is included in a view--the background view. When you attempt to lay a background image or color for your app to cover the entire screen, you might notice white spaces at the top and bottom of the screen of certain devices like the iPhone 13. The background is cut off by the *safe area* which is the area at the top and bottom of the screen that might have important information on it, like the time and battery level at the top of the iPhone13, that apps might not want to cover. If you have committed, and you want to cover the safe area with your chosen background then here's the view modifier for you:
```swift
Color(Color.blue)
  .ignoresSafeArea()
```
This code will color the background of your screen blue, extending the coloring into the safe area and covering the entirety of the screen.

To learn more about the view modifiers we have talked about, you can check out the [Apple developer docs](https://developer.apple.com/documentation/swiftui/views-and-controls) and look at the demo code to see how they are used.

## State and Bindings
### State
### Bindings
### Button and Actions
