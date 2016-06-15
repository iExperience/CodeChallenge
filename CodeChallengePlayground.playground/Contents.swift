//: Playground - noun: a place where people can play

import UIKit

//CHALLENGE 1

func swap<T>(inout a:T, inout with b:T){
    (a,b) = (b,a)
}

var int1 = 6
var int2 = 2

swap(&int1, &int2)

print(int1) //prints 2
print(int2) //prints 6

/* ************************  ************************ ************************ */

//CHALLENGE 2

func flexStrings(a:String = "", _ b :String = "")->String{
    return a + b == "" ? "none" : a + b
}

flexStrings("cat", "fish") //prints "catfish"

/* ************************  ************************ ************************ */

//CHALLENGE 3

func sumAny(vars:Any...)->String{
    return String((vars.map({element in //maps elements of input variables based on case
        switch element {
        case "" as String, 0 as Int: //if empty string or 0
            return -10
        case let elm as String where Int(elm)>0: //if positive integer in string form
            return Int(elm)!
        case let elm as Int: //if other integer
            return elm as Int!
        default: //for all other elements
            return 0
        }
    })).reduce(0,combine:+)) //reduces to sum, initial accumulator: 0, operation: addition
}

print(sumAny(1,"3",2,"bob","%(*&", "dylan","-13", -4, "", 0, "100")) //prints 82

//Initial mistake(s):
// -- Used undefined type "T" instead of "Any" keyword


/* ************************  ************************ ************************ */

//CHALLENGE 4

func countFrom(from:Int, _ to:Int){ //with built-in Array
    let num = [Int](from..<(to+1))
    print(num.reduce(""){
        return String($0)+String($1)
    })
}

func countFromAgain(from:Int, _ to: Int){ //with recursive call
    print(from)
    if from<to{
        countFromAgain(from+1, to)
    }
}

countFrom(35,40) //prints 353637383940
countFromAgain(22,25) //prints 22232425

//Initial mistake(s):
// -- Didn't notice specifications, used an array
// -- (Note: For some reason the "#to" syntax did not work, so I changed it to "_ to" and ommitted the external name)
