import UIKit
import Foundation

func countMemberOfArraynumbers(numbers: [Int]) -> String {
    var counter = 0
    for i in 0..<numbers.count{
        for j in 0..<numbers.count-i{
            if numbers[i] == numbers[j] {
                counter += 1
            }
        }
    }
    return "count \(counter)"
}
countMemberOfArraynumbers(numbers: [1,2,31,1,1,31])
