## Download

<a href="https://apps.apple.com/app/id1605094641" target="_blank">
<img src="https://developer.apple.com/assets/elements/icons/download-on-the-app-store/download-on-the-app-store.svg" alt="Download on the App Store" height="100"/></a>

## Developing the app
1. Open the project from TCG.xcworkspace, not TCG.xcodeproj. It will be the white icon in the Xcode project chooser. We need to do this, so Cocoapods work correctly.
2. To minimize the amount of work you need to do before deploying, pod dependencies are pushed as part of the repo (I read a StackOverflow post to make this call). If for some reason things don't work, you might need to run ```pod install```.

## Deploying the app to a real device
https://codewithchris.com/deploy-your-app-on-an-iphone/

tldr;
- Go to the project directory (left folder icon) -> click on the Xcode project file -> "Signing & Capabilities" -> Choose something from the "Team" dropdown.

## Working with preview
- You can't have a real device selected as the deploy target if you want preview to work; doing this will give you a cryptic error message that you can't Google your way out of. If you want preview to work, choose an emulator.
- The preview is very expensive. Consider disabling it if your computer is laggy and then bring it back on demand when you want to verify several layout changes at once.
- Many views don't have a preview because mocking support for previews is terrible.

## Cocoapods
Cocoapods is the Gradle of iOS. In order to install it, you need RubyGems and Xcode developer tools.
1. ```brew install ruby```
2. ```sudo gem install cocoapods```
3. ```xcode-select --install```

## Tutorials to learn from
https://developer.apple.com/tutorials/swiftui/

## Building and deploying the app
1. Set Xcode to build a generic iOS device.
2. From the top bar: Product -> Archive - This generates a binary.
3. The Xcode organizer will open, which allows you to publish builds to App Store connect.
4. After the build is published, it can take a while to be available on the App Store listing (~10 minutes).

## Random notes
- Folders are called "Groups".
- LinearLayout seems to be the dominant layout engine as everything is contained within "stacks". An HStack is a horizontal LinearLayout and a VStack is a vertical one. Use ZStack to lay out views on top of one another, similar to FrameLayout.
- Icon lookup (website): https://hotpot.ai/free-icons?s=sfSymbols
- Icon lookup (Mac apps): https://developer.apple.com/sf-symbols/
- iOS icon generator: https://easyappicon.com/
