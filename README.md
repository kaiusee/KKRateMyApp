# KKRateMyApp for Swift
KKRateMyApp is a simple Swift rate app library that prompts your app users to rate the app after using it for a X times. 

## Requirements
* Xcode 8 or higher
* iOS 10 or higher

## Installation
### Manual Install
All you need is import `KKRateMyApp.swift` to your project folder.

## Usage Example
In your AppDelegate, `didFinishLaunchingWithOptions` add the following:

`//This is your AppStore AppID. You get that after you create your app in iTunesConnect`
`KKRateMyApp.sharedInstance.appId = "123123123"`

`//Your App Name as it will appear in the AlertViewController for the user`
`KKRateMyApp.sharedInstance.appName = "My Awesome App"`

`//Replace X with the number of tries before you prompt the user with the rating alert.`
`KKRateMyApp.sharedInstance.numberOfTimesBeforePrompts = X`

## Screenshot

![](https://github.com/kaiusee/RateMyApp/blob/master/KKRateMyApp.png)



