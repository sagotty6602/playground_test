import UIKit
import Foundation


func countMemberOfArray(numbers: [Int]) -> String {
    var count: [Int: Int] = [:]
    var result: String = ""
    for key in numbers {
        count[key, default: 0] += 1
    }
    for (key, value) in count {
        result += "Count of \(key) : \(value)\n"
    }
    return result
}

countMemberOfArray(numbers: [9, 3, 4, 5, 4, 3])








