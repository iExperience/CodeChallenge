/* Natalie Polk
 * May 19, 2016
 * i_X iOS Development S1
 * Code Challenge
 */




import UIKit


/* ----------------------- Challenge 1 (1 star) ------------------------ */

func swaps<T>(inout a:T, inout with b:T) {
    (a, b) = (b, a)
}

var a = "Natalie", b = "Polk"
swaps(&a, with: &b)
[a, b]



/* ----------------------- Challenge 2 (2 stars) ----------------------- */

func flexStrings(s1:String = "", s2:String = "") -> String {
    if s1.isEmpty && s2.isEmpty {
        return "none"
    }
    else {
        return s1+s2
    }
}

flexStrings() //--> "none"
flexStrings("One") //--> "One"
flexStrings("One", s2: "Two") //--> "OneTwo"



/* ----------------------- Challenge 3 (3 stars) ----------------------- */

func sumAny(a:Any...) -> String {
    var sum = 0;
    for this in a {
        switch this {
        case let someInt as Int :
            if someInt == 0 {
                sum = sum-10
            }
            else {
                sum = sum+someInt
            }
        case let someString as String :
            if someString.isEmpty {
                sum-=10
            }
            else if Int(someString) != nil && Int(someString) >= 0 {
                sum += Int(someString)!
            }
        default : break
        }
    }
    return String(sum)
}

let resultEmpty = sumAny() //--> "0"
let result1 = sumAny(Double(), 10, "-10", 2) //--> "12"
let result2 = sumAny("Marin Todorov", 2, 22, "-3", "10", "", 0, 33, -5) //--> "42"



/* ----------------------- Challenge 4 (3 stars) ----------------------- */

func countFrom(from:Int, to: Int) {
    if from <= to {
        print(from)
        countFrom(from+1, to: to)
    }
}

countFrom(1, to: 7)
