//: Playground - noun: a place where people can play


func flexSrings(s1: String?, s2: String?) -> String
{
    if (s1==nil && s2==nil) {
        return("none")
    }
    
    if (s2==nil && s1 != nil) {
        return(s1!)
    }
        
    else {
        return (s1!+s2!)
    }

}


flexSrings(nil, s2: nil)





