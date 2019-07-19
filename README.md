# AppleFeedback-SwiftUIFrameClearBackgroundTap
Demonstrates an issue with SwiftUI tapAction on Xcode 11 beta 4.

To reproduce:

1. Run the project on an iPhone XR (iOS 13) simulator
2. Tap the red background around the purple square to change the background to clear
3. Tap the clear background

Expected: The `tapAction` of the frame should be fired and the background should change back to red
Actual: The  `tapActionn` is not fired unless you tap directly on the purple square

Note: The bug happens the same way if the view inside the frame is a `Text` - the `tapAction` only fires when tapping on the actual text rect.

Note: This happens on all devices I tried, including an AppKit app in macOS
