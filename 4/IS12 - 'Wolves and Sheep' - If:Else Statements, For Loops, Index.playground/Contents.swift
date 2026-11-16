//  🏔️ MTECH Code Challenge IS12: "Wolves and Sheep"
//  Concept: Think through the logic of how to identify the position of an item in an array relative to the size of the array. It is not uncommon to need to think about how elements in an array are ordered relative to each other, so this skill will be useful in future development.

//  Instructions:
    //  Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

    //  Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:

    //  [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep] (YOU ARE HERE AT THE FRONT OF THE QUEUE)
    //    7      6      5      4      3            2      1
    //  If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.

//  Notes:
    //  There will always be exactly one wolf in the array.

//  Examples:
    //  Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
    //  Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"

    //  Input: ["sheep", "sheep", "wolf"]
    //  Output: "Pls go away and stop eating my sheep"

//  ⌺ Black Diamond Challenge:
    //  Add a third character, "shepherd", to the puzzle. If the shepherd is adjacent to the wolf, return "Gotcha you mangy mutt!"
    //  Allow for multiple wolves in the array. Output the appropriate response for each wolf found, appending each to the output string as a new line.
        //  (You can add a new line to a string by adding "\n".)

import Foundation

func warning(_ array: [String]) -> String {
    var cout = array.count - 1
    
    if array[cout] == "sheep" {
        return "Oi! Sheep number 1! You are about to be eaten by a wolf!"
    } else {
        return "Pls go away and stop eating my sheep"
    }
}

print(warning(["sheep", "sheep", "sheep", "wolf", "sheep"]))
print(warning(["sheep", "sheep", "wolf"]))
