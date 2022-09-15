//
//  main.swift
//  Calc-3000
//
//  Created by Toto Tsipun on 14.09.2022.
//

import Foundation


func calc (inputString: String) -> String {
    
    let stringWithoutSpaces = inputString.replacingOccurrences(of: " ", with: "")
    
    let arrayInputString = stringWithoutSpaces.components(separatedBy: CharacterSet(charactersIn: " /*+-"))
    guard let a = Double(arrayInputString[0]) else {
        return "Don't contain correct number"
    }
    guard let b = Double(arrayInputString[1]) else {
        return "Don't contain correct number"
    }
    var result: Double = 0.0
    switch true {
    case inputString.contains("/"):
        guard b != 0 else {
            return "Can't divide by zero"
        }
        result = a / b
    case inputString.contains("*"):
        result = a * b
    case inputString.contains("+"):
        result = a + b
    case inputString.contains("-"):
        result = a - b
    default: print("Don't contain correct operator")
    }
    return "Result: \(result)"
}

print("Hello! It's the calculator.\nEnter an expression with positive numbers.\nPlease, write fractional numbers with a dot\n(Example: 22.2 / 2)")
let input = readLine()
if input != nil {
    print(calc(inputString: input!))
} else {
    print("Data is incorrect")
}

