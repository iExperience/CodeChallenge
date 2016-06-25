//Challenge 1

import UIKit

func swap(inout var1: Any, inout with var2: Any) { (var1, var2) = (var2, var1) }

var var1 = "hi", var2 = "bye"
swap(&var1, &var2)

[var1, var2]










