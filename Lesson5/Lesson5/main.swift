//
//  swift Stream 9
//  Lesson5
//
//  Created by Evgeny Mastepan on 03.10.2024.
//

import Foundation
var errorCode: Bool = true
//=============================================
//                 1. Знак числа
//=============================================
/* Задача 1: Написать программу, которая с помощью switch-case определяет тип числа (положительное,
 отрицательное, ноль).
 Пример:
 Введите номер месяца: 3 Результат: Весна */

print("Введите целое число")
if let tempNumber = readLine() {
    if Int(tempNumber) != nil {
        let number = Int(tempNumber) ?? 0
        switch number {
          case ..<0: print ("Число меньше нуля.")
          case 0: print ("Число равно нулю.")
          case 0... : print ("Число больше нуля.")
          default: print("Число вне диапазона.")
        }
    } else { errorCode = false }
} else { errorCode = false }
 if !errorCode { print("Ошибка ввода данных.") }

//=============================================
//        1bis. Вивальди. "Времена года."
//=============================================
/* Напишите программу, которая определяет, к какому времени года относится введённый номер месяца (1 — январь, 2 — февраль и т.д.). Используйте switch-case. */
errorCode = true // Сброс флага ошибок

print("Введите номер месяца")
if let tempMonth = readLine() {
    if Int(tempMonth) != nil {
        let month = Int(tempMonth) ?? 0
        switch month {
            case 1,2,12: print("Это зима.")
            case 3...5:  print("Это весна.")
            case 6...8:  print("Это лето.")
            case 9...11: print("Это осень.")
        default: print("Время года неизвестное науке.")
        }
    } else { errorCode = false }
} else { errorCode = false }
if !errorCode { print("Ошибка ввода данных.") }

//=============================================
//              2. Калькулятор
//=============================================
/* Задача 2: Создайте простую программу-калькулятор, которая
 запрашивает у пользователя два числа и операцию (сложение,
 вычитание, умножение, деление). Используйте switch-case для Задача 2: Создайте перечисление Weekday, которое описывает дни
 выполнения соответствующей операции.
 Пример:
 Введите первое число: 10
 Введите второе число: 5
 Введите операцию (+, -, *, /): *
 Результат: 50 */
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
    case "/": do {
                    if secondNumber == 0 {
                        errorCode = false
                        print("На ноль делить нельзя")
                    } else {
                        print(firstNumber/secondNumber)
                    }
                 }
    default: errorCode = false
    }
} else { errorCode = false }
if !errorCode { print("Ошибка ввода данных.") }

//=============================================
//                        3. Права доступа
//=============================================
/* Задача 3: Напишите программу, которая определяет уровень доступа пользователя на основе его роли. Роль вводится в виде строки и может принимать значения: admin, user, guest. Пример: Введите роль пользователя: admin Результат: Полный доступ */
errorCode = true // Сброс флага ошибок

print ("Введите уровень доступа")
if let accessLevel = readLine() {
    switch accessLevel {
    case "admin": print("chmod: Доступ с правами управления пользователями.")
    case "root":  print("chmod: Полный доступ без ограничений.")
    case "user":  print("chmod: Ограниченный доступ.")
    case "guest": print("chmod: Ограниченный доступ только на чтение.")
    default:      print("В доступе отказано.")
    }
} else { errorCode = false }
if !errorCode { print("Ошибка ввода данных.") }

//=============================================
//              1. Светофор
//=============================================
errorCode = true // Сброс флага ошибок

/*Задача 1: Создайте перечисление TrafficLight, которое описывает состояния светофора: red, yellow, green. Напишите функцию, которая принимает состояние светофора и выводит соответствующее действие:
 Если red, то вывести "Стоп".
 Если yellow, то вывести "Приготовьтесь".
 Если green, то вывести "Можно идти".*/

enum TrafficLight {
    case red
    case yellow
    case green
}

func roadControl(state: TrafficLight) {
    switch state {
    case .red:
       print("Стоп")
    case .yellow:
       print("Приготовьтесь")
    case .green:
       print("Можно идти")
   }
}

roadControl(state: .yellow)

//=============================================
//              2. Рабочий календарь
//=============================================
errorCode = true // Сброс флага ошибок

/* Задача 2: Создайте перечисление Weekday, которое описывает дни недели: monday, tuesday, wednesday, thursday, friday, saturday, sunday. Напишите функцию, которая принимает день недели и выводит, является ли этот день рабочим или выходным.*/

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func workCalendar(state: WeekDay) {
    switch state {
    case .saturday,
         .sunday:
       print("Выходной")
    case .monday,
         .thursday,
         .tuesday,
         .friday,
         .wednesday:
       print("Рабочий день")
   }
}

workCalendar(state: .sunday)

//=============================================
//              3. Гуру направлений.
//=============================================

/*Задача 3: Создайте перечисление CompassDirection, которое описывает направления компаса: north, south, east, west. Напишите программу, которая принимает направление и выводит его описание: Если north, вывести "Север — холод и снег".
 Если south, вывести "Юг — тепло и солнце".
 Если east, вывести "Восток — рассвет и новая жизнь". Если west, вывести "Запад — закат и отдых".*/

enum CompassDirection: String {
    case north = "Север — холод и снег"
    case south = "Юг — тепло и солнце"
    case east  = "Восток — рассвет и новая жизнь"
    case west  = "Запад — закат и отдых"
}

func directionalRule (directional: CompassDirection) {
    print(directional.rawValue)
}

directionalRule(directional: .south)
