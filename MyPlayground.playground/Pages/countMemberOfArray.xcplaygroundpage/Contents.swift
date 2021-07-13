import UIKit
import Foundation

func countMemberOfArray(numbers: [Int]) {
    var counts: [Int: Int] = [:]
    for key in numbers {
        counts[key, default: 0] += 1
    }
    for (key, value) in counts {
        print("Count of \(key) : \(value)")
    }
}

countMemberOfArray(numbers: [9, 3, 4, 5, 4, 3])



