# KKRateMyApp for Swift
KKRateMyApp is a simple Swift rate app library that prompts your app users to rate the app after using it for a X times. 

## Requirements
* Xcode 8 or higher
* iOS 10 or higher

## Installation
### Manual Install
All you need is import `KKRateMyApp.swift` to your project folder.

## Usage Example
1. In your AppDelegate, `didFinishLaunchingWithOptions` add the following:

```swift
//This is your AppStore AppID. You get that after you create your app in iTunesConnect
KKRateMyApp.sharedInstance.appId = "123123123"

//Your App Name as it will appear in the AlertViewController for the user
KKRateMyApp.sharedInstance.appName = "My Awesome App"

//Replace X with the number of tries before you prompt the user with the rating alert.
KKRateMyApp.sharedInstance.numberOfTimesBeforePrompts = X
```

2. In your main ViewController. Call 
```swift
KKRateMyApp.sharedInstance.rateApp()
```
This will check how many times the app has run and based on the number you provided earlier it will display the rating alert view. 

## Screenshot

![](https://github.com/kaiusee/RateMyApp/blob/master/KKRateMyApp.png)


## License
MIT License

Copyright (c) 2017 Kais K.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
