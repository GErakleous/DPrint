# DPrint

[![CI Status](http://img.shields.io/travis/GErakleous/DPrint.svg?style=flat)](https://travis-ci.org/GErakleous/DPrint)
[![Version](https://img.shields.io/cocoapods/v/DPrint.svg?style=flat)](http://cocoapods.org/pods/DPrint)
[![License](https://img.shields.io/cocoapods/l/DPrint.svg?style=flat)](http://cocoapods.org/pods/DPrint)
[![Platform](https://img.shields.io/cocoapods/p/DPrint.svg?style=flat)](http://cocoapods.org/pods/DPrint)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DPrint is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DPrint'
```
and then perform a pod install.

## Details
**NOTE: EXPERIMENTAL**

Small Debug logger written in Swift. It can log the name of the file in which it appears, the name of the declaration and the line number. Different types of logs are supported as well: text = 🔤, debug = 🚥, warning = ⚠️, error = ❌, fixme = 💊.

There is a default 'DPrint.log' method which accepts the following arguments:
* #item (Any) -> The item(s) to print.
* #path (String)	-> The name of the file in which it appears (optional).
* #functionName (String) -> The name of the declaration in which it appears (optional).
* #lineNo (Int) -> The line number on which it appears (optional).
* #messageType (DPrintMessageType)	-> The type of icon to show when printing the message (optional).
Five more convenient methods have been provided to help distinguish logs based on type (i.e. DPrint.logText, DPrint.logDebug, DPrint.logError, DPrint.logFixMe, DPrint.logWarning). See usage below.

## Usage:

In your class:

```Swift
import DPrint
```

Then when you want to log something use one of the following methods:
```Swift
DPrint.log("blah", ["item", "item 1"], ["item": 6, "item2": 8], 9)
DPrint.logText([2, 4], "text")
DPrint.logDebug("A debug message")
DPrint.logError("An error message")
DPrint.logFixMe("Fix me please")
DPrint.logWarning("Please be careful")
```

The output will be:
```
File: ViewController.swift | Function: viewDidLoad() | lineNo: 18
-> blah
-> ["item", "item 1"]
-> ["item": 6, "item2": 8]
-> 9
🔤 | File: ViewController.swift | Function: viewDidLoad() | lineNo: 21
-> [2, 4]
🔤 | File: ViewController.swift | Function: viewDidLoad() | lineNo: 21
-> text
🚥 | File: ViewController.swift | Function: viewDidLoad() | lineNo: 22
-> A debug message
❌ | File: ViewController.swift | Function: viewDidLoad() | lineNo: 23
-> An error message
💊 | File: ViewController.swift | Function: viewDidLoad() | lineNo: 24
-> Fix me please
⚠️ | File: ViewController.swift | Function: viewDidLoad() | lineNo: 25
-> Please be careful
```

## Author

George Erakleous, g.erakleous@gmail.com

## License

DPrint is available under the MIT license. See the LICENSE file for more info.
