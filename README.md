# Build your first iOS test app
This repository aims to help you get started building your first iOS app integrating the Intercom iOS SDK. You'll learn how to build a simple app that allows you to register/signout users as well as displaying/hiding the messenger.

## 1- Must know before writing your iOS app

While building this app, the main files that you'll be interacting with are:

- **AppDelegate.swift**: the Application Delegate is an object which receives notifications when the UIApplication object reaches certain states (App launching and teardown). For example "applicationDidFinishLaunching" function is used to handle on-startup configuration and construction and "applicationWillTerminate" function can be used to shutdown an app gracefully.
- **ViewController.swift**: the view controller manages a portion of an app’s user interface as well as the interactions between that interface and the underlying data. 
- **info.plist**: property list files are used to store user's settings (eg. permissions). They are also used to store information about bundles and applications
- **Main.storyboard**: it's a visual representation of the user interface of an iOS application, showing screens of content and the connections between those screens.

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
- **Also make sure to import Intercom by add "import Intercom" to the top of your AppDelegate.swift file**

### f- Adding the UI elements to your iOS app

In this section, we will add the relevant UI objects (labels, text fields, buttons) to have a UI that allows users to register/signout from Intercom as well display and hide the messenger.
All you need to do here is go to your Main.storyboard file, click on the object library icon (as shown below) then select what object you wanna add to your app

![](https://downloads.intercomcdn.com/i/o/96352615/c5181a00d1cc35ea56eecfa4/3J26u.png)

After adding all the UI elements, your Main.storyboard should look like:

![](https://downloads.intercomcdn.com/i/o/96354666/ab0bad74676470788966f2fa/Main_storyboard_%E2%80%94_Edited.jpg)

### g- Interacting with your app's UI elements.

As mentioned previously. The code that allows you to make your UI elements perform some actions is located in the ViewController.swift file.
Xcode provides a very easy to interact with UI object. So the first step here is to click on the "Show the Assistant editor" then **control + click** then drag the desired UI object to the ViewController.

![](https://downloads.intercomcdn.com/i/o/96359619/d79df809b96fd781b3163fa7/Screen+Recording+2019-01-11+at+04.06+p.m..gif)

Let's now add the logic behind each of our button:
- **_Register user_**: What we want here is to read the value entered in the text field then [register the user](https://developers.intercom.com/installing-intercom/docs/ios-installation#section-step-3-register-your-users) with Intercom using the user_id or email based on the value entered. The code we gonna be using here is:
```
       let identifier = String(user_id_email_text_field.text!)
        if identifier.contains("@"){
            Intercom.registerUser(withEmail: identifier)
           
        } else {
            
            Intercom.registerUser(withUserId: identifier)
        }
```

- **_Signout_**: This button will [logout](https://developers.intercom.com/installing-intercom/docs/ios-installation#section-how-to-unregister-a-user) the user (`Intercom.logout()`)
- **_Display messenger_**: This button will make the [messenger widget visible](https://developers.intercom.com/installing-intercom/docs/ios-configuration#section-choose-how-the-launcher-appears-and-opens-for-your-users) (`Intercom.setLauncherVisible(true)`)
- **_Hide messenger_**: This will hide the messenger widget (`Intercom.setLauncherVisible(false)`)

At this stage, your View Controller should like like:

![](https://downloads.intercomcdn.com/i/o/96369822/179385dabfec0a2af919b976/ViewController_swift.jpg)

Finally **make sure to import Intercom by add "import Intercom" to the top of your ViewController.swift file**

### h- Run your iOS app

Once your code is ready, you can easily select the emulator device and run the app by clicking on the play icon on the top left side

![](https://downloads.intercomcdn.com/i/o/96370706/5f83aefff19531f6161e6348/Screen+Recording+2019-01-11+at+04.48+p.m..gif)

You can find all the code used in this project in the "First iOS app" directory.

## 3- Next steps

You can enrich your iOS app but addind some extra features to it:
- [Updating a user's data and sending custom attributes](https://developers.intercom.com/installing-intercom/docs/ios-configuration#section-update-a-user)
- [Tracking events](https://developers.intercom.com/installing-intercom/docs/ios-configuration#section-submit-an-event)
- [Displaying the Help center](https://developers.intercom.com/installing-intercom/docs/ios-configuration#section-articles-help-center)
