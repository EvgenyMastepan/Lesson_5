//
//  swift Stream 9
//  Lesson5
//
//  Created by Evgeny Mastepan on 03.10.2024.
//

import Foundation
var errorCode: Bool = true
////=============================================
////                             1. Знак числа
////=============================================
//
//print("Введите целое число")
//if let tempNumber = readLine() {
//    if Int(tempNumber) != nil {
//        let number = Int(tempNumber) ?? 0
//        switch number {
//          case ..<0: print ("Число меньше нуля.")
//          case 0: print ("Число равно нулю.")
//          case 0... : print ("Число больше нуля.")
//          default: print("Число вне диапазона.")
//        }
//    } else { errorCode = false }
//} else { errorCode = false }
// if !errorCode { print("Ошибка ввода данных.") }

////=============================================
////                       1bis. Вивальди. "Времена года."
////=============================================
//errorCode = true
//
//print("Введите номер месяца")
//if let tempMonth = readLine() {
//    if Int(tempMonth) != nil {
//        let month = Int(tempMonth) ?? 0
//        switch month {
//            case 1,2,12: print("Это зима.")
//            case 3...5: print("Это весна.")
//            case 6...8: print("Это лето.")
//            case 9...11: print("Это зима.")
//        default: print("Время года неизвестное науке.")
//        }
//    } else { errorCode = false }
//} else { errorCode = false }
//if !errorCode { print("Ошибка ввода данных.") }

//=============================================
//              2. Калькулятор
//=============================================
errorCode = true // Сброс флага ошибок

func inputNumber()->Double {
    if let number = readLine() {
        if Double(number) != nil {
            return Double(number) ?? 0
        } else {
            errorCode = false
            return 0
        }
    } else {
        errorCode = false
        return 0
    }
}

print("Введите первое число:")
let firstNumber = inputNumber()
print("Введите второе число:")
let secondNumber = inputNumber()
print ("Введите операцию + - * / ")
if let operation = readLine() {
    switch operation {
    case "+": print(firstNumber + secondNumber)
    case "-": print(firstNumber - secondNumber)
    case "*": print(firstNumber * secondNumber)
    case "/": print(firstNumber / secondNumber)
    default: errorCode = false
    }
} else { errorCode = false }
if !errorCode { print("Ошибка ввода данных.") }
