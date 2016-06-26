//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
func swapVariables(inout s1:String,inout _ s2:String){
    let s3:String=s1
    s1=s2
    s2=s3
}
var changedString1 = "My name is David"
var changedString2 = "My last name is Xu"
swapVariables(&changedString1, &changedString2)
print(changedString1)
print(changedString2)

func addMultipleString(words:String...)->String{
    var newString:String = ""
    for word in words{
        newString+=word
    }
    if words.count==0{return "none"}
    else {return newString}
}
print (addMultipleString("my ","name ","is ","David."))
print (addMultipleString())


func swap<T>(inout a:T, inout with b:T) { (a, b) = (b, a) }   //demo code 
var a = "Marin", b = "Todorov"
swap(&a, &b)
[a, b]

func countFrom(from:Int,_ to:Int){
    print(from,terminator:"")
    if from<to{
        countFrom(from+1,to)
    }
}
countFrom(1,5)

func reverseText(a:String) -> String {
    var b:String = a
    var c:String
    c.append(b.endIndex.predecessor())

}

