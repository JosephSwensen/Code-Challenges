//  🏔️ MTECH Code Challenge IS15: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.

//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]

import Foundation

func reverseSort(_ array: [String]) {
    print(array.sorted(by: >))
}

reverseSort(["Bob", "Jill", "Sally"])

func reverseSortLetters(_ array: [String]) -> [String] {
    array.sorted(by: >)
    for string in array {
        string.sorted(by: >)
    }
    return array
}

print(reverseSort(["Bob", "Jill", "Sally"]))
