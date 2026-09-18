//  🏔️ MTECH Code Challenge SF04: "What Century is the Year?"
//  Concept: Move between mathematical and linguistic concerns using formulaic Swift code

//  Instructions:
    //  Write code that takes an integer representing a year as input, and outputs the century it is in.

//  Notes:
    //  Remember, the first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

//  Examples:
    //  Input: 1752, Output: 18
    //  Input: 1900, Output: 19
    //  Input: 1601, Output: 17
    //  Input: 2000, Output: 20

//  ⌺ Black Diamond Challenge:
    //  Store the century as an ordinal number in a String. That means 21 becomes 21st, 4 becomes 4th, etc.

import Foundation

let year = 1752

// Calculate century and store it to a variable

switch year {
    case 1...100:
    print("\(year) is in the 1st century")
case 101...200:
    print("\(year) is in the 2nd century")
case 201...300:
    print("\(year) is in the 3rd century")
case 301...400:
    print("\(year) is in the 4th century")
case 401...500:
    print("it is in the 5th century")
default:
    print("Invalid year")
}
