# Hack Sprint Session 1: Introduction to Swift

**Date**: January 12, 2022

**Location**: Zoom

**Teachers**: [Nareh Agazaryan](https://github.com/nareha)

## Resources

- [Slides](http://links.uclaacm.com/hacksprint22-s1-slides)
- [Workshop Recording](https://youtu.be/swXXKGc5A58)

## What we'll be learning today
- [What is Swift?](#what-is-swift)
  - [History and Introduction](#history-and-introduction)
  - [SwiftUI vs UIKit](#swiftui-vs-uikit)
- [Intro to Xcode](#intro-to-xcode)
- [Views](#views)
- [View Modifiers](#view-modifiers)

---

Welcome to Hack Sprint, Winter '22! The goal of this workshop series is to teach you the fundamental skills for iOS Development in Swift so that by the end, you'll be able to make your own iOS applications and have a good starting point for the rest of your mobile development journey!

Please note that, unfortunately, developing iOS apps is restricted to machines running MacOS as of the date of this workshop. If you don't own a Mac device, one option is to use [MacStadium](https://www.macstadium.com/). This *is* a paid service, but if you want to try iOS development immediately, this is a quick solution.

This session is more of an introductory view to what we'll be covering for the rest of the quarter, but it definitely has some concepts that you can learn and start applying immediately. Let's start!

## What is Swift?

### History and Introduction
Let's take a look into the past, back when telephone booths were first invented... just kidding! But we don't have to go too far back to remember a time when "mobile" devices used to just refer to phones. Now, we have a LOT of devices under this category: phones, tablets, smart watches, and so on. Thus, when we refer to **mobile development**, we're referring to building applications for **on-the-go devices**.

The applications we build can be built using languages and tools that are *native*, or those that are *cross-platform*. **Native** refers to using one language to write for one device or OS type. Thus, the code you write for an Android phone, for example, wouldn't be compatible with a Windows phone or iPhone. The benefits of this are that you get higher performance, since the language is built and supported to be run on that platform, and sometimes getting in the respective app stores is easier. The downside is that if you want to deploy your app on many different devices, you would have to rewrite the code with new technology each time! On the other side there is **cross-platform** development, which refers to using one language for many devices. This results in an app that is much easier to lanch on multiple platforms, and to maintain, since it only requires one codebase. The negatives of this is that optimizing performance on these apps can be difficult, and sometimes there isn't strong support for UI/UX tools. This isn't to say one is better than the other, though! There are tradeoffs to consider, and it really depends on what you want to do for your app. Swift, which is what we'll be using, is a *native* language.

Now, let's look into how Swift came to be. Back when dinosaurs still roamed the earth (the 80's), C was a really popular programming language, and did the things it could do *really* well! Apple saw this and really liked C, and thus created their own language based on C called **Objective-C**. If you've never seen Objective-C code before, it is admitedly a little ugly, but it really did the job back then. iOS development required Objective-C for the longest time.

Then comes 2014, when Pharrell Williams released "Happy", but more notably **Swift** was released! Swift is this modern and sleek new programming language by Apple that you could consider as Objective-C's replacement. So why Swift? Apple boasts that it is about 3 times faster than Objective-C, but it has a lot of other neat perks too! One notable feature is that the Apple OS market is HUGE, so even if you didn't want to exclusively do iOS apps, you could definitely branch out and make applications for the iPad, Mac computers, WatchOS, and even TvOS! An additional bonus is that Swift is open-source, which might be interesting to you!

Some benefits of Swift, and why we're choosing to use it for our iOS development adventure, is that it has easy integration with the App Store, and with joining the Apple Developer Program. Additionally, as mentioned earlier, it can be easily integrated with other Apple devices as well. Another cool bonus is that the iOS developer average (base) salary is sitting at a nice $115K per year rate... pretty sweet!

So what does Swift exactly do for our apps! Swift defines the **functionality** of the app and the items on the screen. This leads us to ask how we can **structure** and show what we'd like the items on the screen to **look like**? Here we introduce Apple's **UI** (user interface) tools for Swift. These tools **define and build the design** of the UI that we want to see on the screen. This makes working to make the UI a lot simpler! There are two main tools provided by Apple, UIKit and SwiftUI.

### SwiftUI vs UIKit
What is the difference between these two tools? Interestingly enough, for a fairly new language, we already have an even newer tool for use! The difference comes mostly in the way you write the code for these two tool sets. UIKit may appear more similar to C++, while SwiftUI is more "React"-like and a little easier to type. They have significance in other aspects as well. UIKit is the older UI tool set, which most iOS apps are most likely using currently. If you wanted to get an iOS job at this second, you would most likely need to know or be working with UIKit code. The newest creation (circa 2019) is SwiftUI, which is still young but definitely has the future on its shoulder. It has a more modern format, and new apps are beginning to be written in SwiftUI now. We're going to focus on SwiftUI, but this doesn't mean your options are all or nothing! A lot of times, at least until SwiftUI is more mature, some very advanced tools will require some UIKit integration. But that's okay! SwiftUI can definitely stand on its own, especially for our purposes!

Just as a quick note, it's important to make a distinction between between Swift and SwiftUI, as they are not interchangable. Swift is the *programming language* itself, while SwiftUI is an additional tool that uses Swift to build the UI that we can see.

## Intro to Xcode
This writeup won't contain the details of each panel of Xcode, but I recommend opening up Xcode and exploring what it has to offer! The slides include some hidden slides that outline the main components of Xcode that would be helpful to reference as well.

Xcode is Apple's IDE (integrated development environment) for Swift. This included an area for coding, a device emulator (which will allow you to preview and test your work, though you can test on your own phone as well by connecting it to your computer!), and some other tools that allow for a smooth experience.

One tip is that by clicking on the plus button in the top bar, you can drag and drop views and view modifiers (which we'll learn about soon)! This can help familiarize yourself with the way that they are written so then you would be able to add them yourself!

## Views
Let's assume that we had an idea for an app, or that a designer had given us a visual for an app to create. How would we hadd that content to the screen? This is where SwiftUI's **Views** come into play. Views can be thought of as *building blocks*, which let you add content to the screen in order to build it up to a state that you would like! There are a LOT of pre-made views for us, but we'll brief you on two main ones!

First, let's explore **Text**. Text displays one or more lines of text on the screen, and this text will be (read-only). The format for making this Text will be
```
Text("Subscribe to Eugene Lo on YouTube!")
```

Very similar is the **Image** view. Image displays an image on the screen, from your *assets* library. The format for making this Image will be
```
Image("someFileName")
```

Where does the file name come from? As briefly mentioned, the assets library! The Assets Library is called **Xcode Assets** (.xcassets). Images that you want to add to the application will be placed in a folder called Assets with extension .xcassets. One thing to make note of is that when dragging and dropping into the folder, Xcode will make this into an Image Set. Without getting too much into it, Apple requires multiple sizes for each asset in order to scale better to multiple sizes of screens. For our purposes, we'll ignore this in order to quickly create images for demonstrative purposes, but we welcome you to explore this when creating your app, since it will be required!

Now lets get into another type of view. So far, we've only used views to add content, but there are views that actually change how the content looks on the screen in terms of layout! This is what we call **stacks**, which allows us to combine, order, and group views!

There are two types we'll explore for today: VStack and HStack. VStack organizes the views vertically, meaning the first entry in the view will be on the top, and views will be added in descending order.

```
VStack {
  View1
  View2
}
```

The second type is HStack, which works similarly, but organized views horizontally, meaning the first entry in the view will be on the left, and views will be added to the right.

```
HStack {
  View1
  View2
}
```

In future workshops, we will explore a LOT more views, but this is just a taste of what is to come!

## View Modifiers
How can we change how the views look individually? After all, we might not want to keep the default sizes and colors! This is what **view modifiers** do! They modify how the view looks/is styled. They change the attributes of a view, such as adding bold text, changing the text color, or changing the image size! Generally, a modifier can be written as

```
View.modifier()
````

You can even add multiple modifiers to style the view just the way you want; you don't have to choose just one modifier!
```
View
  .modifier1()
  .modifier2()
  .modifier3()
```

Some examples are `.bold()` to bold a Text view, `.background()` and `.foregroundColor()` to add some style to the view, and `.resizable()`, `.frame()`, and `.scaledToFit/Fill()`. I highly recommend checking the Apple developer docs and the demo code for how to use these, as well as look for more! These are only a few out of the MANY provided in SwiftUI!
