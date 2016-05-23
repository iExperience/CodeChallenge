//: Playground - noun: a place where people can play

import UIKit

// Your first challenge is to write a function that takes two variables (of any type) as
// parameters and swaps their values.
// Need to use inout keyword so that the values can be changed outside of the function scope.
func swapper<Type>(inout a: Type, inout _ b: Type)
{
    (a, b) = (b, a)
}

var a = "first"
var b = "second"
// Call the function
swapper(&a, &b)

print(a)
print(b)
