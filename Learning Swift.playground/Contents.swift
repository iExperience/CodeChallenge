//: Playground - noun: a place where people can play

import UIKit

func swap<T> (inout x: T, inout y: T) {
    (x,y) = (y,x);
}

func flexStrings (x: String = "", y: String = "") -> String {
    return x + y
}

func sumAny (x: Any...) -> String {
    return String((x.map({mem in
        switch mem {
        case 0 as Int, "" as String:
            return -10
        case let s as String where Int(s) > 0:
            return Int(s)!
        case let n as Int:
            return n
        default:
            return 0
        }
        
    })).reduce(0, combine: +))
}

func countFrom (from: Int, to: Int) {
    if (from <= to) {
        print(from)
        countFrom(from + 1, to: to)
    }
}