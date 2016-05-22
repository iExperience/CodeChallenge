//: Playground - noun: a place where people can play

import UIKit

// Challenge 1
func swap<Type>(inout a: Type, inout b: Type){
    (a, b) = (b, a)
}

// Challenge 2
func flexStrings(s1: String = "", s2: String = "") -> String{
    return s1 + s2 == "" ? "none": s1 + s2
}

// Challenge 3
func sumAny(anyValues: Any...) -> String{
    return String((anyValues.map({item in
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
        $0 + $1
        })
}

// Challenge 4
func countFrom(from: Int, to: Int){
    print(from)
    if from != to {
        countFrom(from + 1, to: to)
    }
}
