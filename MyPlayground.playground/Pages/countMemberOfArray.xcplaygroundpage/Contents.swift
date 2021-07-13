import UIKit
import Foundation

func countMemberOfArr(arr: [Int]) -> String {
    var counts: [Int: Int] = [:]
    var result: String = ""
    for key in arr {
        counts[key, default: 0] += 1
    }
    for (key, value) in counts {
        result += "Count of \(key) : \(value)\n"
    }
    return result
}

countMemberOfArr(arr: [1, 2, 3, 1, 2, 4, 4, 5, 5])



