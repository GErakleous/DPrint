#
# Be sure to run `pod lib lint DPrint.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DPrint'
  s.version          = '0.2.0'
  s.summary          = 'Small Debug logger written in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
NOTE: EXPERIMENTAL

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

                       DESC

  s.homepage         = 'https://github.com/GErakleous/DPrint'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'George Erakleous' => 'g.erakleous@gmail.com' }
  s.source           = { :git => 'https://github.com/GErakleous/DPrint.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.3'

  s.source_files = 'DPrint/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DPrint' => ['DPrint/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
