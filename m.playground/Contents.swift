//: Playground - noun: a place where people can play

import Cocoa

//Question 1 - Full points

func swap(inout a:Int, inout with b:Int) { //Any type? has to use templates
    (a, b) = (b, a)
}


//Question 2- Full points

func flexStrings(s1: String = "", s2: String = "") -> String {
    return s1 + s2 == "" ? "no": s1 + s2
}

//Question 3 (this one doesn't make sense to me) - 1 point

func sumAny(anys: Any...) -> String {
    return String((anys.map({item in
        switch item {
        case "" as String, 0 as Int:
            return -10
        case let s as String where s.toInt() > 0:
            return s.toInt()!
        case is Int:
            return item as Int
        default:
            return 0
        }
    }) as [Int]).reduce(0) {
        $0 + $1
        })
}

//Question 4 - 2 points
func countFrom(from: Int, #to: Int) {
    print(from) 
    if from < to {
        countFrom(from + 1, to: to)
    }
}

countFrom(1, to: 5)
