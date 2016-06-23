
//: Playground - noun: a place where people can play

// Sam Cheng

import UIKit




// Challenge 1
func swapTwo<T>(inout a: T, inout b: T) {
    
    let temp = a
    a = b
    b = temp
    
}


// Challenge 2
func flexStrings(s1 :String = "", s2: String = "" ) -> String {
    
    if 1 == "" && s2 == "" {
    return "none"
    }
    else {
        
    return s1 + s2
    }
    
    
}



// Challenge 3
func sumAny(anyArr: Any...) -> String {
    var total = 0
    
    for item in anyArr
    {
        switch item {
        case "" as String:
        total = total - 10
        case 0 as Int:
        total = total - 10
        case is Int:
        total = item as! Int + total
        case let s1 as String where Int(s1) > 0:
        total = total + Int(s1)!

        default:
            break
        
    }
   
    }
    
    return String(total)
    
    
}



// Challenge 4
func countFrom(from : Int, to : Int) {
    
    if from <= to {
        print(from)
        countFrom(from + 1, to: to)
    }
    

    
    
}




var s1 = "mike"
var s2 = "tompson"

flexStrings(s1, s2: s2)
flexStrings()

countFrom(2,to: 19)


