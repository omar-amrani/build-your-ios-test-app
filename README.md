# Build your first iOS test app
This repository aims to help you get started building your first iOS app integrating Intercom iOS SDK. You'll learn how to build a simple app that allows to register/signout users as well as displaying/hiding the messenger.

## 1- Must know before writing your iOS app

While building this app, the main file that you'll be interacting with are:

- **AppDelegate.swift**: the Application Delegate is an object which receives notifications when the UIApplication object reaches certain states (App launching and teardown). For example "applicationDidFinishLaunching" function is used to handle on-startup configuration and construction and "applicationWillTerminate" function can be used to shutdown an app gracefully.
- **ViewController.swift**: the view controller manages a portion of an app’s user interface as well as the interactions between that interface and the underlying data. 
- **info.plist**: Property list files are used to store user's settings (eg. permissions). They are also used to store information about bundles and applications

## 2- Getting started with your first iOS app
### a- Download and Install Xcode
Xcode is a development environment for macOS and that isused to build iOS apps.
First, you'll need to create an apple account by going [here](https://appleid.apple.com/account?appId=632&returnUrl=https%3A%2F%2Fdeveloper.apple.com%2Fdownload%2F#!&page=create) then you can download Xcode by going to this [link](https://developer.apple.com/xcode/).
After that, just follow the instructions to get Xcode installed. I recommend to check out [this video](https://www.youtube.com/watch?v=YIZxSZJMU2Y) to know more about how to use Xcode.
### b- Create a new Xcode project
- First open Xcode and click on "Create a new Xcode project"
- Then select the app template you want to use. In our example, we will use the "Single View App" template
- Set the product name for your project and make sure to select "Swift" as a language
- Select the directory where you want to save your project then hit create


![](https://downloads.intercomcdn.com/i/o/96184484/e2d09bd5c79921126441d344/Screen+Recording+2019-01-10+at+09.07+p.m..gif)

### c- Installing Intercom SDK for your iOS app
An iOS library can be installed in 3 different ways:
- [CocoaPods](https://cocoapods.org/): An application level dependency manager for the Objective-C, Swift 
- [Carthage](https://github.com/Carthage/Carthage): A dependency manager that builds your dependencies and provides you with binary frameworks.
- Downloading and manually adding the library framework to your Xcode project

Please refer to our [official documentation](https://developers.intercom.com/installing-intercom/docs/ios-installation#section-step-1-install-intercom) to install Intercom using one of the method mentioned above.

### d- Updating info.plist with the correct permissions

In order to be able to upload an image/GIF in the Intercom messenger, the app will need first to get the user's permission to access photo library. This can easily be done by adding a "Privacy - Photo Library Usage Description" entry to the info.plist file.

![](https://downloads.intercomcdn.com/i/o/96189961/f6f406f6e49aaecaf7d40dd8/56a43d2-Screen_Shot_2016-11-09_at_16.01.34.png)


### e- Initializing Intercom for your iOS app

The idea here is to load Intercom when your app is launching. In order to do so you'll need to:
- Go to your [Intercom platform --> Settings --> Installation --> iOS](https://app.intercom.io/a/apps/_/settings/ios) and copy the Initialization line of code for Swift

![](https://downloads.intercomcdn.com/i/o/96191205/ea8149f7f481aa6b2da49832/a2de3a1-Installing_iOS.png)
- Add the line of code to the "didFinishLaunchingWithOptions" function of your AppDelegate.swift file

