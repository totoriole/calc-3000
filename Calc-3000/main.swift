//
//  main.swift
//  Calc-3000
//
//  Created by Toto Tsipun on 14.09.2022.
//

import Foundation

func calc (inputString: String) -> String{
//    guard inputData.contains("/")||inputData.contains("*")||inputData.contains("+")||inputData.contains("-") else {
//        return "Не содержит корректного оператора"
//    }
    let arrayInputString = inputString.components(separatedBy: CharacterSet(charactersIn: " /*+-"))
    print(arrayInputString)
    guard let a = Double(arrayInputString[0]) else {
        return "Не содержит корректного числа"
    }
    guard let b = Double(arrayInputString[1]) else {
        return "Не содержит корректного числа"
    }
    var result: Double = 0.0
    switch true {
    case inputString.contains("/"):
        guard b != 0 else {
            return "На ноль делить нельзя"
        }
        result = a / b
    case inputString.contains("*"):
        result = a * b
    case inputString.contains("+"):
        result = a + b
    case inputString.contains("-"):
        result = a - b
    default: print("Не содержит корректного оператора")
    }
    return "Результат: \(result)"
}

let inputData = "99.4*2"
print(calc(inputString: inputData))

