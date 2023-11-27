//
//  main.swift
//  HomeWork-2
//
//  Created by Артем Заиткулов on 27.11.2023.
//

import Foundation


// 1. Задание: Четность числа

func parity(_ num : Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}
print (parity(7))

// 2. Задание: Делимость на 3

func divisibilityByThree(_ num1 : Int) -> Bool {
    if num1 % 3 == 0 {
        return true
    } else {
        return false
    }
}

print (divisibilityByThree(9))


// 3. Задание: Массив из 100 чисел

var numbers = Array(1...100)

numbers = numbers.filter{$0 % 2 != 0}
numbers = numbers.filter{$0 % 3 == 0}
print (numbers)


// 4. Задание: Числа Фибоначчи

func febonacciNumbers() -> [Int] {
    var arrayFebonacciNumbers = [0,1]
    for _ in 1...50 {
        let lastFebonacciNumbers = arrayFebonacciNumbers[arrayFebonacciNumbers.count-1] + arrayFebonacciNumbers[arrayFebonacciNumbers.count-2]
        arrayFebonacciNumbers.append(lastFebonacciNumbers)
    }
    return arrayFebonacciNumbers
}
var result = febonacciNumbers()
print (result)

 // 5. Задание: Факториал числа

func factorial(_ n: Int) -> Int {
    var factorial = 1
    for i in 1...n {
        factorial *= i
    }
    return factorial
}

print (factorial(9))


// 6. Задание: Простой калькулятор

func operation( argA: Int, argB: Int) -> (add: Int, sub: Int, mult: Int, div: Int) {
    var add = argA + argB
    var sub = argA - argB
    var mult = argA * argB
    var div = argB != 0 ? argA / argB : argB/argA
    return (add, sub, mult, div)
}

print (operation(argA: 5, argB: 7))


// 7. Задание: Длина строки

func length(_ string: String) -> Int {
    string.count
}

print (length("Artyom"))

// 8. Задание: Максимум из трех чисел

func maximumThreeNumbers (num1: Int, num2: Int, num3: Int) -> Int {
    var max = num1
    if num2 > max {
        max = num2
    }
    if num3 > max {
        max = num3
    }
    return max
}

print (maximumThreeNumbers(num1: -89, num2: 115, num3: 5))


// 9. Задание: Реверс строки

func stringFunc(_ string1: String) -> String {
    String(string1.reversed())
}
print (stringFunc("Шалаш"))


