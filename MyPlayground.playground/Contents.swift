import UIKit
import Foundation

func calculate(morther : Int) {
    for i in 1...12 {
        print("\(morther) x \(i) = \(i * morther)")
    }
}
calculate(morther: 2)

func power(base input1: Int,power input2: Int) -> Int {
    var result = 1
    for _ in 1...input2 {
        result *= input1
    }
    return result
}
power(base: 2, power: 32)

func factor(inputNum : Int) -> Int {
    var numFac = inputNum
    var result = 1
    for _ in 1...inputNum {
        result *= numFac
        numFac -= 1
    }
    return result
}
factor(inputNum: 3)

func powerOf(base: Int, power: Int) -> Int {
    if power > 1 {
        return powerOf(base: base, power: power - 1) * base
    } else {
        return base
    }
}
powerOf(base: 3, power: 3)

func factorRecarv(inputNumber: Int) -> Int {
    if inputNumber > 1 {
        return factorRecarv(inputNumber: inputNumber - 1) * inputNumber
    } else {
        return inputNumber
    }
}

factorRecarv(inputNumber: 5)

//func primeNumber(inputNum: Int) -> [Int] {
//    var result: [Int] = []
//
//    for i in 1...inputNum {
//        if i > 3 {
//            for j in 2..<i {
//                if i % j != 0 &&  {
//                    if !result.contains(i) {
//                        result.append(i)
//                    }
//                } else {
//                    break
//                }
//            }
//        } else {
//            result.append(i)
//        }
//    }
//    return result
//}
//primeNumber(inputNum: 100)

//รับข้อมูลชื่อ นามสกุล คะแนน ฟังก์ชันจะลิสคะแนน แล้วต้องรวมคะแนน max min avg

struct Student {
    let name: String
    let lastName: String
    let score: Int
}

var test = [
    Student(name: "Too", lastName: "Poptron", score: 80),
    Student(name: "tukkey", lastName: "Chin", score: 19)
]

func listStudent(students: [Student]) {
    for student in students {
        print("\(student.name) \(student.lastName) \(grade(score: student.score) ?? "-")")
        print("Max : \(calculateScoreMax(students: students))")
        print("Min : \(calculateScoreMin(students: students))")
        print("Avg : \(calculateAvg(students: students))")
    }
}

func grade(score: Int) -> String? {
    if score <= 100 {
        switch score/10 {
        case 8, 9, 10:
            return "A"
        case 7:
            return "B"
        case 6:
            return "C"
        case 5:
            return "D"
        default:
            return "F"
        }
    } else {
        return nil
    }
}

func calculateScoreMax(students: [Student]) -> Int {
    var maxScore = 0
    for student in students {
        maxScore = maxScore >= student.score ? maxScore : student.score
    }
    return maxScore
}
func calculateScoreMin(students: [Student]) -> Int {
    var minScore = 100
    for student in students {
        minScore = minScore <= student.score ? minScore : student.score
    }
    return minScore
}
func calculateAvg(students: [Student]) -> Double {
    var sum = 0
    for student in students {
        sum += student.score
    }
    return Double(sum) / Double(students.count)
}



listStudent(students: test)
