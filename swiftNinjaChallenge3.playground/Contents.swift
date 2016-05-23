//: Playground - noun: a place where people can play

import UIKit

// Single return statement.
func sumAny(anys: Any...) -> String {
    return String((anys.map({item in
        switch item {
        case "" as String, 0 as Int:
            return -10
        case let s as String where Int(s) > 0:
            return Int(s)!
        case is Int:
            return item as! Int
        default:
            return 0
        }
    }) as [Int]).reduce(0) {
        // Reformat to String
        $0 + $1
        })
}

sumAny(5, "5", "dad?", "5.0")
