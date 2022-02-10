# Hack Sprint Session 5: State and Bindings

**Date**: February 9, 2022

**Location**: Zoom

**Teachers**: [Eric Yang](https://github.com/eric8yang), [Thomas McGall](https://github.com/tmag1)

## Resources

- [Slides](https://docs.google.com/presentation/d/13rfkqxUmd0yK7uWBy7TK_yO93GjbwJgl07aVwsnKlbM/edit?usp=sharing)

## What we'll be learning today

- [HTTP Get/Post](#http-get-and-post)
- [URLSession](#urlsession)
- [APIs](#apis)
- [JSON](#json)
- [AsyncImage](#asyncimage)

## HTTP GET and POST
HTTP stands for HyperText Transfer Protocol, and it's the language we use to communicate information with a server. The specific actions that we can take are defined by requests. 2 of the most used requests are the GET request and the POST request.

### GET Request
The GET request is used whenever you are trying to get information. For the purposes of our demo, we'll be trying to get some pictures of dogs and displaying them on our screen. GET requests can also be sent with some data attached. If we were to have a secure server that only certain people could access, you could pass credentials in the GET request in order for the server to accept the request. There may also be a case where what you're trying to access doesn't exist. You may have seen this if you have ever gotten a 404 Not Found error.

### POST Request
The POST request is used whenever you are trying to update some information. An example of this would be if you are at the bank and trying to add money to your account. Similar to the GET request, POST requests can also attach data. In this case, the data would be equivalent to the money you give the bank teller to update your account with. POST requests can also be used to generate new information in the server if it is not already there. This would be equivalent to something like opening a new bank account.

## URLSession
URLSession is what we use in Swift to make these HTTP requests. Specifically, URLSession comes with a few "tasks" that each represent a different request. The 2 most common tasks are the dataTask and uploadTask, which correspond to a GET request and a POST request respectively. The URLSession, when being set up, also requires a "configuration." The configuration refers to the way the session will be used (getting information realtime, downloading something in the background, etc.). For our use case, a declaration of the URLSession can look something like the following:
```swift
let defaultSession = URLSession(configuration: .default)
```

### dataTask
As aforementioned, the dataTask is used to make a GET request. It requires a URL to try and make a request to, and also takes a completion handler which runs after the request is made. The completion handler, or closure, takes in 3 parameters: data, response, and error **(in that order!)**. Data refers to the information that is gotten from the server, response contains the response code (404 Not Found, 200 OK, etc.), and error can be used to tell you if there was a problem with the request. In the closure, you should both check for errors/bad responses as well as use the data how you please.

## APIs
API stands for Application Programming Interface. People write code all the time, and they can share the code that they write through APIs. In our dog photo album, we'll be making requests to [https://dog.ceo/dog-api/](https://dog.ceo/dog-api/), which accepts GET requests and returns links to dog images. I chose to use this API since it is both free and easy to use (no authentication). Feel free to check out other APIs online [here](https://any-api.com/).

## JSON
I know, another acronym. Don't worry, we're here to help you break it down. JSON stands for JavaScript Object Notation. It is essentially a widely agreed upon way to send information over the web. The dog API mentioned above actually returns the information necessary in a JSON. JSONs are usually defined to begin and end with curly braces: { and }. In between these braces, we find comma-separated "key-value pairs".

### Key-Value Pairs
A key value pair in a JSON takes on the form of `"key" : value`. The key has to be a String (something like "eric" or "abc"), but the value can take on many types. This is sort of similar to a map or dictionary if you have worked with any of those. 

## AsyncImage

Thanks for coming!
