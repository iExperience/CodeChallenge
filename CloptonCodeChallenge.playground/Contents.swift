//: Playground - noun: a place where people can play

import UIKit

// Larissa Clopton - Code Challenge

// Challenge #1
func swap<T>(inout x: T, inout with y: T)
{
    // swap two values
    (x, y) = (y, x)
}

var x = "Larissa", y = "Clopton"
swap(&x,&y)


// Challenge #2
func flexStrings(str1: String = "", str2: String = "") -> String
{
    // concatenate 0, 1, or 2 strings
    return (str1 + str2 == "") ? "none": (str1 + str2)
} 

flexStrings()
flexStrings("One")
flexStrings("One", str2: "Two")


// Challenge #3
func sumAny(items: Any...) -> String
{
    // add a variable number of items of any type, return as string
    return String((items.map({value in
        switch value {
            case "" as String, 0 as Int:
                return -10
            case let str as String where Int(str) > 0:
                return Int(str)!
            case is Int:
                return value as! Int
            default:
                return 0
        }
    }) as [Int]).reduce(0) {
        $0 + $1
    })
}

let sum = sumAny("Marin Todorov", 2, 22, "-3", "10", "", 0, 33, -5)


// Challenge #4
func countFrom(from: Int, to: Int)
{
    // count from one number to another
    if from > to {
            return
    }
    else {
            print(from)
            countFrom(from + 1, to: to)
    }
}

countFrom(1, to: 5)

