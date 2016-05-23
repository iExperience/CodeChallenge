//: Playground - noun: a place where people can play

import UIKit

// Concetenate the arguments if they exist. 
func flexStrings(s1: String?=nil, _ s2: String?=nil) -> String
{
    if s1 == nil {
        return "none"
    }
    else if s2 == nil{
        return s1!
    }
    else {
        return s1! + s2!
    }
}

// Their faster implementation
func betterFlexStrings(s1: String = "", _ s2: String = "") -> String {
    return s1 + s2 == "" ? "none": s1 + s2
}

var s1 = "One", s2 = "Two"

print(flexStrings(s1, s2))

