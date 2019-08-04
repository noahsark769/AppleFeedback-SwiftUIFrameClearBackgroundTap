# AppleFeedback-SwiftUIFrameClearBackgroundTap
Demonstrates an issue with SwiftUI tapAction on Xcode 11 beta 4. This has been submitted as FB6748034

To reproduce:

1. Clone the git repo at https://github.com/noahsark769/AppleFeedback-SwiftUIFrameClearBackgroundTap
2. Open the xcodeproj
3. Run the project on an iPhone XR (iOS 13) simulator
4. Tap the red background around the purple square to change the background to clear
5. Tap the clear background

Expected: The `tapAction` of the frame should be fired and the background should change back to red
Actual: The  `tapActionn` is not fired unless you tap directly on the purple square

Note: The bug happens the same way if the view inside the frame is a `Text` - the `tapAction` only fires when tapping on the actual text rect.

Note: This happens on all devices I tried, including an AppKit app in macOS
