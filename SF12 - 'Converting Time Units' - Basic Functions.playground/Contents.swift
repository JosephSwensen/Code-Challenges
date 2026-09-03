//  🏔️ MTECH Code Challenge SF12: "Converting Time Units"
//  Concept: Practice an easy time-unit conversion problem to prepare for future challenges relating to time

//  Instructions:
    //  Your task is to write a function which returns the time since midnight in milliseconds.
    //  Your input will consist of three Int parameters which represent hours, minutes, and seconds, respectively.

//  Examples:
    //  Input: h: 0, m: 1, s: 1
    //  Output: 61000

//  ⌺ Black Diamond Challenge:
    //  Create an inverse function that takes an input in milliseconds and returns the hours, minutes, and seconds as either a tuple or a string.

import Foundation

func millisecondsSinceMidnight(hours: Int, minutes: Int, seconds: Int) -> Int {
    (hours * 3_600_000) + (minutes * 60_000) + (seconds * 1_000)
}

 print(millisecondsSinceMidnight(hours: 11, minutes: 23, seconds: 30))

