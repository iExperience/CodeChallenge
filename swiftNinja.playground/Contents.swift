//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func swap<T>(inout a:T, inout with b:T) {
    
    (a, b) = (b, a)
}

var one = "oneString", two = "twoString"

swap(&one,&two)

print(one + "  " + two)

func flexstring(one: String = "", two: String = "")->String{
    
    if (one.isEmpty && two.isEmpty) {
        return "none"
    }
    else{
        return one + two;
    }
}

flexstring("hello", two: " world")

flexstring("", two: "")


func countFrom(from:Int, to:Int){
    
    var from2 = from;
    
    print(from)
    
    if from != to{
        from2 += 1
        countFrom(from2, to: to)
    }
}

countFrom(1, to: 5)

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
        $0 + $1
        })
}

sumAny("256")

sumAny(256)








