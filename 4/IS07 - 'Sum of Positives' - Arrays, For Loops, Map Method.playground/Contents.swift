//  🏔️ MTECH Code Challenge IS07: "Sum of Positives"
//  Concept: Practice iterating through an array using For Loops; instructor will introduce or review the map method as well

//  Instructions:
    // Create a function that takes an array of numbers, and returns the sum of all of the positives ones.

//  Notes:
    //  If there is nothing to sum, output 0.

//  Examples:
    //  Input: [1,-4,7,12]
    //  Math: 1 + 7 + 12 = 20
    //  Output: 20

//  ⌺ Black Diamond Challenge:
    //  Create a second function that instead returns two arrays, separating the positive and the negative numbers in the array. You can return it as an ([Int], [Int]) tuple, or as a custom structure holding both arrays.

import Foundation

func SumOfPositives(_ array: [Int]) -> Int {
    var sum: Int = 0
    
    for num in array {
        if num >= 0 {
            sum += num
        }
        
    }
    return sum
}

print(SumOfPositives([1,-4,7,12]))
