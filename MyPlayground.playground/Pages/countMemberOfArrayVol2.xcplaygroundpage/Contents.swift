import UIKit
import Foundation

func countMemberOfArray(numbers: [Int]) {
    var counts: [Int: Int] = [:]
    var positionArr: [Int] = []
    for key in numbers {
        if !positionArr.contains(key) {
            positionArr.append(key)
        }
        counts[key, default: 0] += 1
    }
    for key in positionArr {
        print("Count of \(key) : \(counts[key]!)")
    }
}

countMemberOfArray(numbers: [9, 3, 4, 5, 4, 3])




