func sumAny(inputs: Any...) -> String {
    
    var total: Int = 0
    
    // add -10 if string is empty
    if (inputs.isEmpty) {
        total += -10
    }
    
    var i = 0
    
    
    // loop over all inputs
    while (i<inputs.count) {
        
        // check if input type is an Int
        if (inputs[i] is Int) {
            let inputVar = inputs[i] as! Int // makes input an int iff it is an int
            
            // add -10 if input == 0
            if (inputVar == 0) {
            total += -10
            }
            
            else {
               total += inputVar
            }
        }
        
        // check if input type is a string
        if ((inputs[i] is String)) {
            let inputString = String(inputs[i]) // assigns a variable to input iff it is a string
            
            if let inputVar = Int(inputString) { // changes string to an Int iff it is an integer that was just passed as a string
                
                // add a string value iff it is positive number
                if (inputVar >= 0) {
                    total += inputVar
                }
            }
        }
        i += 1 // count to iterate over all inputs
    }
    
    let totalString = String(total)
    return totalString
    }
print(sumAny("Marin Rood", 2, 22, "10", 0, 33, -5))
