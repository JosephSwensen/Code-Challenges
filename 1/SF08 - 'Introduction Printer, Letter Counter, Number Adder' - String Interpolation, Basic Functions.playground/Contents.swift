//  🏔️ MTECH Code Challenge SF08: "Introduction Printer, Letter Counter, Number Adder"
//  Concept: Practice using string interpolation and basic functions

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Change the values below to your own name and age.
let name = "Joey"
let age = 17

//  2) Print a string introducing the user using the "name" and "age" variables. Use string interpolation
print("users name is: \(name) and they are: \(age) years old")

//  3) Create a function that takes in a word as a String. The function will return the number of letters in the string as an Int.
func letterCount(word: String) -> Int {
    return word.count

}
letterCount(word: "joey")

//  4) Create a function that takes in two Ints. The function will return the two Ints added together.
func numberAdder(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
numberAdder(num1: 8, num2: 32)

//  ⌺ Black Diamond Challenge:
    //  Create a function that prints the results of each step all at once.
