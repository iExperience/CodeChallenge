//: Playground - noun: a place where people can play

import UIKit

// Resursvely count from from to to
func countFrom(from: Int, to: Int)
{
    print(from, terminator: "")

    if (from < to) {
        countFrom(from + 1, to: to)
    }
}

countFrom(1, to: 5)
