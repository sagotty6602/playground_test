import UIKit

func bubbleSort(arr: [Int]) -> [Int] {
    var myArr = arr
    var swap = true
    while swap == true {
        swap = false
        for i in 0..<myArr.count - 1 {
            if myArr[i] > myArr[i+1] {
                let temp = myArr[i]
                myArr[i] = myArr[i+1]
                myArr[i+1] = temp
                swap = true
            }
        }
    }
    return myArr
}

bubbleSort(arr: [7, 9, 13, -4, 0])
