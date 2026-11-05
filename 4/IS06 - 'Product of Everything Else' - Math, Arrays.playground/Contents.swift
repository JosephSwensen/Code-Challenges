//  🏔️ MTECH Code Challenge IS06: "Product of Everything Else"
//  Concept: Practice solving unique math problems

//  Instructions:
    //  Create a function which accepts and returns an array of integers.
    //  For the output array, replace each number in the input array with the product of all the numbers in the array except the number at that index itself.
    //  So in [1, 2, 3, 4, 5], 1 would be replaced with 2 * 3 * 4 * 5 = 120.

//  Examples:
    //  Input: [1, 2, 3, 4, 5]
    //  Output: [120, 60, 40, 30, 24]

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, 'excludeZeroes', which is a Boolean.
    //  If 'excludeZeroes' is true, the function should exclude any zeroes in the input array when calculating the products. Otherwise, the function should behave as originally specified.

import Foundation

func ProductOfEverythingElse(_ array: [Int]) -> [Int] {
    var tempArray: [Int] = []
    tempArray = array
    var answerArray: [Int] = []
    
    for num in tempArray {
        var removedNum = tempArray.remove(at: num)
        var answer = tempArray.reduce(1, *)
        answerArray.append(answer)
        tempArray.append(removedNum)
    }
    return answerArray
}

print(ProductOfEverythingElse([1, 2, 3, 4, 5]))
