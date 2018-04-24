# [Meals Made Easy](https://github.com/MealsMadeEasy/iOS) &middot;  

## Prerequisites
- A Mac running macOS Sierra or higher
- An Iphone running iOS 8.0 or higher
- [***Xcode 9.0*** or higher](https://developer.apple.com/xcode/)
- ***Homebrew***
    ```
    /usr/bin/ruby -e "$(curl -fsSL     https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
- ***Ruby Gem***
    ```
    brew install ruby
    ```
- ***Cocoapods***
    ```
    sudo gem install cocoapods
    ```
- For authentication to work, you will need to set up Firebase. A detail instruction on how to set it up can be found here 
https://firebase.google.com/docs/auth/ios/phone-auth
---

## Dependencies
- The project uses Cocoapods to manage its dependencies.
- To install the dependecies, run `pod install && pod update` in a terminal from the project's root directory
    -   Press `⌘-Shift-A` to open the Application window, type `terminal` into the search box, and hit return.
    -   Open the folder where you have cloned this repository on your Mac, and type `pod install && pod update`.
    -   The Cocoapods will install and link the dependencies to the project.
---

## Build
- To build the application, in the project folder, click on the file `MealsMadeEasy.xcworkspace`. This will start and add the project to Xcode
- Select your desired emulator/iPhone device from the drop down list on the top left in Xcode.
- To the left of the drop down, you will see the `build` button with a play icon, press on it and the build process will begin. The app will be installed on your emulator/iPhone device after the build is completed.

---
## Known Issues
Here is a list of UI issues that were left unresolved in the final release of the iOS app.
- Due to an unknown caching issue, some food images are not loading correctly. A temporary fix when this issue happens is to close and re-open the app.
- You can find more issues related to the backend here https://github.com/MealsMadeEasy/Backend/blob/master/README.md
---
## Latest Release Note

You can check the latest release note for the iOS app here: 
https://github.com/MealsMadeEasy/iOS/blob/master/CHANGELOG.md
