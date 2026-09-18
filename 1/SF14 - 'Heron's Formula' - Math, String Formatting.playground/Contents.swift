//  🏔️ MTECH Code Challenge SF14: "Heron's Formula"
//  Concept: Practice converting more complicated math formulas into Swift code; practice string formatting

//  Instructions:
    //  In geometry, Heron's formula (or Hero's formula) gives the area of a triangle in terms of the three side lengths a, b, and c.
    //  Look up Heron's formula. Note that it is composed of two equations; one defines "s", and the other uses the result of that equation to find "A", the area.
    //  Create a function that takes in the three sides and returns a String of the resulting area.
    //  Your output should have two digit precision.

//  Notes:
    //  You may refer to your last code challenge to remember how to output a number as a string with two digit precision.

//  Examples:
    //  Input: a: 4, b: 13, c: 15
    //  Output: "24.00"

//  ⌺ Black Diamond Challenge:
    //  Implement a function that validates whether the given sides can form a valid triangle before calculating the area.
    //  For any three sides to form a triangle, the sum of any two sides must be greater than the third side.
    //  If the sides do not form a valid triangle, return an appropriate error message.

import Foundation

func math(a: Double, b: Double, c: Double) -> Double {
    var s = (a + b + c) / 2
    var A = sqrt(s * (s-a) * (s - b) * (s - c))
    return A
}

print(math(a: 4, b: 13, c: 15))
