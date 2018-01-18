//
//  DPrint.swift
//
//  Created by GErakleous on 29/06/2017.
//  Copyright © 2018 GErakleous. All rights reserved.
//

import Foundation

public class DPrint {

	enum DPrintMessageType: String {
		case text = "🔤 | "
		case debug = "🚥 | "
		case warning = "⚠️ | "
		case error = "❌ | "
		case fixme = "💊 | "
		case none = ""
	}
	
	class func log(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line, messageType: DPrintMessageType = .none) {
		#if DEBUG
			let file = path.components(separatedBy: "/").last ?? "Unknown file"
			print("\(messageType.rawValue)File: \(file) | Function: \(functionName) | lineNo: \(lineNo)")
			for item in items {
				print(" -> \(item)")
			}
		#endif
	}

	// ----------------------------------------------------------------------------
	// MARK: - Convenience log/print functions
	// ----------------------------------------------------------------------------

	// Prints a debug message with a text icon
	class func logText(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line) {
		for item in items {
			log(item, path: path, functionName: functionName, lineNo: lineNo, messageType: .text)
		}
	}

	// Prints a debug message with a debug icon
	class func logDebug(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line) {
		for item in items {
			log(item, path: path, functionName: functionName, lineNo: lineNo, messageType: .debug)
		}
	}

	// Prints a debug message with a warning icon
	class func logWarning(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line) {
		for item in items {
			log(item, path: path, functionName: functionName, lineNo: lineNo, messageType: .warning)
		}
	}

	// Prints a debug message with an error icon
	class func logError(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line) {
		for item in items {
			log(item, path: path, functionName: functionName, lineNo: lineNo, messageType: .error)
		}
	}

	// Prints a debug message with a fix me icon
	class func logFixMe(_ items: Any..., path: String = #file, functionName: String = #function, lineNo: Int = #line) {
		for item in items {
			log(item, path: path, functionName: functionName, lineNo: lineNo, messageType: .fixme)
		}
	}
}

