//
//  main.swift
//  SimpleCalc
//
//  Created by Jimmy Nguyen on 10/17/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import Foundation

print("Enter an expression seperated by returns:")

var result = 0.0
var inputs: [String] = []
var i = 0
var doneWithCalc = false

while (!doneWithCalc && i < 3) {
    let input = readLine(strippingNewline: true)!
    inputs += input.components(separatedBy: " ")
    switch inputs[inputs.count-1] {
        case "count":
            result = Double(inputs.count) - 1.0
            doneWithCalc = true
        case "avg":
            var sum = 0.0
            for j in 0...(inputs.count-2) {
                sum = sum + Double(inputs[j])!
            }
            result = sum / Double(inputs.count-1)
            doneWithCalc = true
        case "fact":
            if (inputs.count > 2) {
                print("Only one number for factorials")
            } else {
                result = 1.0
                for k in 1...Int(inputs[0])! {
                    result *= Double(k)
                }
            }
            doneWithCalc = true
        default:
            i += 1
    }
}

if (!doneWithCalc) {
    let operation = inputs[1]
    switch operation {
        case "+":
            result = Double(inputs[0])! + Double(inputs[2])!
        case"-":
            result = Double(inputs[0])! - Double(inputs[2])!
        case"*":
            result = Double(inputs[0])! * Double(inputs[2])!
        case"/":
            result = Double(inputs[0])! / Double(inputs[2])!
        default:
            print("Invalid expression, please use +, -, *, or / for the second input")
    }
}

print("Result: " + String(result))
