# Hack Sprint Session 3: State and Bindings

**Date**: January 26, 2022

**Location**: Zoom

**Teachers**:

## Resources

- Slides coming soon
- Workshop recording coming soon

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
```
Text("I really really really love French toast")
```
This writes the words "I really really really love French toast" to the screen of your app.

Image places the image of your choice from your *assets* folder onscreen. The syntax is:
```
Image("DecadentFrenchToast")
```
This will display the image in your assets folder that is named "DecadentFrenchToast" on the screen.
(Yes, this is absolutely a nod to Nareh's amazing first workshop of this year's Hack Sprint series.)

We have also covered VStack:
```
VStack {
  View1
  View2
}
```
which allows us to align views vertically down the screen, and HStack:
```
HStack {
  View1
  View2
}
```
which allows us to organize views horizontally across the screen.

### New Views
Now, let's talk about some other common views, starting with **ZStack**--and you thought you were done with stacks ;)

ZStacks allow you to stack views on top of each other in a pile (stacking up in the z-direction). The first view listed will be at the bottom of the pile, and the last view will be on top of the pile. For example,
```
ZStack {
  Image("DecadentFrenchToast")
  Text("I really really really love French toast")
}
```
This ZStack will output the text "I really really really love French toast" layered on top of the image "DecadentFrenchToast".

Ok. We have aligned our views, but they're so oddly scrunched up on screen. How can we fix this? **Spacers**.

In a stack (HStack or VStack), you can use a Spacer to (guess what?) *space* things out. A Spacer takes up as much space as possible on the screen, so
```
VStack {
  View1
  Spacer()
  View2
  View3
}
```
shoves View1 all the way to the top of the screen and pushes View2 and View3 to the bottom.
Spacers happen to work well together, so you can have multiple in a stack, making something like
```
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
```
Button (action: {
  //action
  }) {
    Text("buttonText")
}
```
The "buttonText" in the code above will be the text that is printed on the button.

So... now that we know how to make things show up, how to align said newly-spawned views, and how to space them out all fancy, how do we make them look *pretty*?

### Text View Modifiers
View modifiers. View modifiers are the answer to making things look pretty. Previously, we discussed that view modifiers tend to follow the format
```
View
  .modifier()
  .modifier()
```
Each modifier will style the view in a specific way.

Let's go over some text view modifiers. During session 1, we covered the `.bold()`, `.italic()`, `.foregroundColor()`, and `.background()` view modifiers, which bold, italicize, color the text, and color the background of the text, respectively.

Some new modifiers pertaining to the Text view are `.tracking()`, `.font()`, and `.lineSpacing()`. These view modifiers will allow you to add spacing between characters, change the font style, and change the line height.

### Image View Modifiers
Now for images, we've used `.resizable()`, `.frame()`, and `.scaledToFit/Fill()` to make our images the size we want onscreen. Some new view modifiers that might be of interest are `.cornerRadius()`, `.shadow()`, and `.border()`. `.cornerRadius()` rounds the edges of the image to the radius that you specify, shadow creates a drop shadow of your color and size preference, and border creates a border around your image.

Additionally for images, you can use the `.overlay` modifier. `.overlay()` layers another view on top of the view you currently have. For example, if you wanted to create a circular image...
```
Image("DecadentFrenchToast")
  .overlay(Circle())
```
you could use overlay to do so. You can also overlay views that are other shapes, such as `Ellipse()`, `Rectange()`, `Capsule()`, etc.

These shapes can have their own view modifiers like `.fill()` and `.stroke()`/`.strokeBorder()`. `.fill()` fills the shape with the color of your choice. `.stroke()` and `.strokeBorder()` add an outline of your specified color and line width to the shape.

### Button View Modifiers
Next on the view modifiers list, we'll talk about buttons. Buttons are easy to talk about now that we've covered the other views and view modifiers. You can use text view modifiers like `.tracking()`, `.font()`, and`.foregroundColor()` in order to style the buttons's text. `.background()` changes the color of the button itself. You can you image view modifiers like `.cornerRadius()`, `.shadow()`, and `.border()` on buttons as well.
```
Button(action: {
  //action
  }){
  Text("Click me")
    .font(.headline)
    .bold()
    .tracking(3)
    .foregroundColor(Color.white)
}
.padding()
.background(Color.black)
.cornerRadius(15)
```
This code will create a button whose text is styled in the headline font format, is bolded, has letter spacing of 3, and is white. The button itself will have padding (the boundaries of the button will be extended beyond the text itself), it will be black, and have rounded edges with corner radius of 15.

### Safe Area
One last thing about views and view modifiers: the entire device screen is included in a view--the background view. When you attempt to lay a background image or color for you app to cover the entire screen, you might notice white spaces at the top and bottom of the screen of certain devices like the iPhone 13. The background is cut off by the *safe area* which is the area at the top and bottom of the screen that might have important information on it, like the time and battery level at the top of the iPhone13, that apps might not want to cover. If you have committed, and you want to cover the safe area with your chosen background then here's the view modifier for you:
```
Color(Color.blue)
  .ignoresSafeArea()
```
This code will color the background of your screen blue, extending the coloring into the safe area and covering the entirety of the screen.

To learn more about the view modifiers we have talked about, you can check out the Apple developer docs and look at the demo code to see how they are used.

## State and Bindings
### State
### Bindings
### Button and Actions
