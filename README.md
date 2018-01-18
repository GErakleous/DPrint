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

## Details
NOTE: EXPERIMENTAL

TODO: To be updated

Small Debug logger written in Swift. It can log the name of the file in which it appears, the name of the declaration and the line number. Different types of logs are supported as well: text = 🔤, debug = 🚥, warning = ⚠️, error = ❌, fixme = 💊.

## Usage:

Arguments:
#item			Any      	The item(s) to print.
#path			String	The name of the file in which it appears (optional).
#functionName	String   	The name of the declaration in which it appears (optional).
#lineNo			Int      	The line number on which it appears (optional).
#messageType	DPrintMessageType	The type of icon to show when printing the message (optional).

DPrint.log("blah", ["item", "item 1"], ["item": 6, "item2": 8], 9)
DPrint.log("Testing log")
DPrint.logText([2, 4], "text")
DPrint.logDebug("A debug message")
DPrint.logError("An error message")
DPrint.logFixMe("Fix me please")
DPrint.logWarning("Please be careful")

## Author

George Erakleous, g.erakleous@gmail.com

## License

DPrint is available under the MIT license. See the LICENSE file for more info.
