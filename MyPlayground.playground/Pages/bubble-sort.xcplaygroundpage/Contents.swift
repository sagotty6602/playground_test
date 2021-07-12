import UIKit


func bubbleSrot(arr : [Int]) -> [Int] {
    var myArray = arr
    var swap = true
    while swap == true {
        swap = false
        for i in 0..<arr.count-1 {
            if myArray[i] > myArray[i+1] {
                let temp = myArray[i+1]
                myArray[i+1] = myArray[i]
                myArray[i] = temp
                
                swap = true
            }
        }
    }
    return myArray
}
bubbleSrot(arr: [7, 9, 13, -4, 0])
