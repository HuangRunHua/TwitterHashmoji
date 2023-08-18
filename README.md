# TwitterHashmoji

`TwitterHashmoji` is a Swift package for implementing simple Twitter (now Company X) Hashmoji animations when tapping the like (heart❤️) button just below the Tweets (now called Posts). 

## Overview

`TwitterHashmoji` gives you powerful functions to generate complex animations based on your input views.  You can just pass a single `Image` and witout any custom animation to achieve a graceful animation which just the same like effect as Twitter in your app. 

`TwitterHashmoji` is written totally by `SwiftUI` which means you can use this package in all platform. ``TwitterHashmoji` is a botton view with basic Twitter hashmoji animation. Just with serval lines of code you can achieve complex animations you like.

The image below shows [#Paimon's](https://twitter.com/hashmojis/status/1691652717582639168) like effect animation.

![](https://github.com/HuangRunHua/TwitterHashmoji/raw/main/intro.GIF)

## Using TwitterHashmoji in your project

In your `Package.swift` Swift Package Manager manifest, add the following dependency to your `dependencies` argument:

```swift
.package(url: "https://github.com/HuangRunHua/TwitterHashmoji.git", branch: "main"),
```

Add the dependency to any targets you've declared in your manifest:

```swift
.target(
    name: "MyTarget", 
    dependencies: [
        .product(name: "TwitterHashmoji", package: "TwitterHashmoji"),
    ]
),
```

To display the `hashmoji` button simply use `HashmojiButton(content:)` , supplying a `View` or `Image`

```swift
import SwiftUI
import TwitterHashmoji

struct ContentView: View {
    var body: some View {
        HashmojiButton(content: {
            Image("paimon")
        })
        .frame(width: 80)
    }
}

#Preview {
    ContentView()
}
```

The above code will implement a simple button without any actions. If you want to fire an event when the user taps a button and unfire it after the second button click, you can use `HashmojiButton(onTapGesture: onDismiss: content:)`

```swift
import SwiftUI
import TwitterHashmoji

struct ContentView: View {
    var body: some View {
        HashmojiButton {
            print("User taps the button")
        } onDismiss: {
            print("User dismiss the action")
        } content: {
            Image("paimon")
        }
        .frame(width: 80)
    }
}

#Preview {
    ContentView()
}
```

Please generate built-in documentation of `TwitterHashmoji` for more detailed information about the library.

## Getting Involved

### Submitting a Bug Report

TwitterHashmoji tracks all bug reports with [GitHub Issues](https://github.com/HuangRunHua/TwitterHashmoji/issues). You can use the "TwitterHashmoji" component for issues and feature requests specific to TwitterHashmoji.

### Submitting a Feature Request

For feature requests, please feel free to file a [GitHub Issues](https://github.com/HuangRunHua/TwitterHashmoji/issues).

Don't hesitate to submit a feature request if you see a way TwitterHashmoji can be improved to better meet your needs.
