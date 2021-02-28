# KKRateMyApp for Swift
KKRateMyApp is a simple Swift rate app library that prompts your app users to rate the app after using it for a X times.
If the user didn't review your app at the time, they will be prompted again after X times. 

## Requirements
* Xcode 8 or higher
* iOS 10.3 or higher

## Installation
### Manual Install
All you need is import `KKRateMyApp.swift` to your project folder.

## Usage Example
In your AppDelegate, `didFinishLaunchingWithOptions` add the following:

```swift
// Call this func below with the number of times you would like to trigger the app rating 
KKRateMyApp.shared.rateApp(numberOfTimesBeforePromptingTheUser: 5)
```

## Screenshot

![](https://github.com/kaiusee/RateMyApp/blob/master/KKRateMyApp.jpg)


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
