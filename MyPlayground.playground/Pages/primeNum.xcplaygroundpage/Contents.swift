import UIKit


func isPrimeNumber(num: Int) -> Bool {
    var checkPrime = true
    if num > 3 {
        for i in 2..<num {
            if num % i == 0 {
                checkPrime = false
                break
            } else {
                checkPrime = true
            }
        }
    }
    return checkPrime
}
isPrimeNumber(num: 6)

