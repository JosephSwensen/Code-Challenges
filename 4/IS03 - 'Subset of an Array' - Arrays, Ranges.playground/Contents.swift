//  🏔️ MTECH Code Challenge IS03: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//  Examples:
    //  Input: [15,5,6,7,2,3,45,12], 3
    //  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation

var subset: [Int] = []
var index: Int = 0

func subset(_ inputArray: Array<Int>, _ n: Int) -> Array<Int> {
    for n in 1...n {
        subset.append(inputArray[index])
        index += 1
    }
    return subset
    
}

print(subset([15,5,6,7,2,3,45,12], 3))
