![](https://github.com/kennic/FrameLayoutKit/blob/master/banner.jpg)

[![Version](https://img.shields.io/cocoapods/v/FrameLayoutKit.svg?style=flat)](http://cocoapods.org/pods/FrameLayoutKit)
[![License](https://img.shields.io/cocoapods/l/FrameLayoutKit.svg?style=flat)](http://cocoapods.org/pods/FrameLayoutKit)
[![Platform](https://img.shields.io/cocoapods/p/FrameLayoutKit.svg?style=flat)](http://cocoapods.org/pods/FrameLayoutKit)
![Swift](https://img.shields.io/badge/%20in-swift%204.2-orange.svg)

FrameLayout is a super fast and easy to use layout library for iOS and tvOS.

For Objective-C version: [NKFrameLayoutKit](http://github.com/kennic/NKFrameLayoutKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

FrameLayoutKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FrameLayoutKit"
```

## Hello world

```swift
let image = UIImage(named: "earth.jpg")

let label1 = createLabel(text: "Hello World 1", backgroundColor: .red)
let label2 = createLabel(text: "Hello World 2", backgroundColor: .green)
let label3 = createLabel(text: "Hello World 3", backgroundColor: .blue)
let label4 = createLabel(text: "Hello World 4", backgroundColor: .black)
let label5 = createLabel(text: "Hello World 5", backgroundColor: .purple)

let label4_5 = DoubleFrameLayout(axis: .vertical, distribution: .top, views: [label4, label5])
label4_5.spacing = 5

let label3_4_5 = DoubleFrameLayout(axis: .horizontal, distribution: .left, views: [label3, label4_5])
label3_4_5.spacing = 5

frameLayout = StackFrameLayout(axis: .vertical, distribution: .top)
frameLayout.append(view: label1)
frameLayout.append(view: label2)
frameLayout.append(view: imageView).contentAlignment = (.center, .center)
frameLayout.append(frameLayout: label3_4_5)
frameLayout.edgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
frameLayout.showFrameDebug = true
frameLayout.spacing = 5
```
![Hello World](/helloWorld.png "Hello World")

## Benchmark
FrameLayoutKit is one of the fastest layout libraries.
![Benchmark Results](/bechmark.png "Benchmark results")

See: [Layout libraries benchmark's project](https://github.com/layoutBox/LayoutFrameworkBenchmark)

## Todo

- [x] CocoaPods support
- [x] Objective-C version
- [x] Swift version
- [ ] Examples
- [ ] Documents

## Author

Nam Kennic, namkennic@me.com

## License

FrameLayoutKit is available under the MIT license. See the LICENSE file for more info.
