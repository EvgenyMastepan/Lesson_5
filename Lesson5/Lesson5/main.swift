//
//  swift Stream 9
//  Lesson5
//
//  Created by Evgeny Mastepan on 03.10.2024.
//

import Foundation
var errorCode: Bool = false
//=============================================
//              1.
//=============================================

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

