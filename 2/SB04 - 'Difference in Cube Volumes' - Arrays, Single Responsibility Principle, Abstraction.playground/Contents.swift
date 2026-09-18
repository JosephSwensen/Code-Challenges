//  🏔️ MTECH Code Challenge SB04: "Difference in Cube Volumes"
//  Concept:  Practice converting mathematical functions into Swift code; practice avoiding reuse of code, instead abstracting code that needs to be reused into a separate function

//  Instructions:
    //  Create a program that will take two lists of integers, a and b.
    //  Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b.
    //  You must find the difference of the cuboids' volumes regardless of which is bigger.

//  Examples:
    //  Input: ([2, 2, 3], [5, 4, 1])
    //  Logic: Volume of cube a is 12, volume of cube b is 20. Therefore, should return 8.
    //  Output: 8

//  ⌺ Black Diamond Challenge:
    //  Return nil if the input is invalid (i.e., not enough or too many sides).
    //  Input: ([9,1],[3,4])
    //  Output: nil

import Foundation

func differenceInVolumes(cube1: [Int], cube2: [Int]) -> Int? {
    var val1 = cube1[0] * cube1[1] * cube1[2]
    var val2 = cube2[0] * cube2[1] * cube2[2]
    var diffrence = val2 - val1
    print(diffrence)
        return nil
}



differenceInVolumes(cube1: [2, 2, 3], cube2: [5, 4, 1])
