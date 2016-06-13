//: Playground - noun: a place where people can play

import UIKit

func swap<X> (inout a: X, inout no b: X)
{
    (a,b) = (b,a)
}

var a = "hello"
var b = "bye"
swap(&a, &b)
[a,b]


func flexStrings(s1: String = "", _ s2: String = "") -> String {
    if (s1 + s2 == "")
    {
        return "none"
    }
    return s1 + s2
}

var flex = flexStrings("hi", "you")
var newflex = flexStrings()

func sumAny<T>(a1: T...) -> String
{
    let convert = a1.map({(b1: T) -> Int in
        switch b1
        {
        case "" as String, 0 as Int:
            return -10
        case let x as String where Int(x) > 0:
            return Int(x)!
        case is Int:
            return b1 as! Int
        default:
            return 0
        }
        })
    
        return String(convert.reduce(0, combine: {(c1: Int, c2: Int) -> Int in c1 + c2}))
}

var test = sumAny ("", 0, "9", 2, "-10")

func countFrom(from: Int, to: Int)
{
    if (from <= to)
    {
        print(from)
        countFrom(from + 1, to: to)
    }
}




