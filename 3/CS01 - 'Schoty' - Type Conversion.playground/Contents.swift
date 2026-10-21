//  🏔️ MTECH Code Challenge CS01: "Schoty"
//  Concept: Practice converting data from one representation to another, in this case a unique representation of a number to a standard Int.

//  Instructions:
    //  The Russian schoty is type of abacus (counting tool) that is used by sliding threaded beads along horizontal wires. An example schoty would have 7 wires, each holding 10 beads. Each bead, when moved to the left, would count as 1 unit. Starting from the bottom wire and moving up, the units increase by a factor of 10. If we use "O" for a bead and "-" to show the wire, we can represent the schoty as follows:
    /*  ---OOOOOOOOOO  millions
        ---OOOOOOOOOO  hundred-thousands
        ---OOOOOOOOOO  ten-thousands
        ---OOOOOOOOOO  thousands
        ---OOOOOOOOOO  hundreds
        ---OOOOOOOOOO  tens
        ---OOOOOOOOOO  ones */

    //  To read the number, we count the beads on the left-hand side of each wire. In the example below, the number is 501264:
    /*  ---OOOOOOOOOO  0
        OOOOO---OOOOO  5
        ---OOOOOOOOOO  0
        O---OOOOOOOOO  1
        OO---OOOOOOOO  2
        OOOOOO---OOOO  6
        OOOO---OOOOOO  4 */

    //  Given an array of strings representing each wire in the schoty, return the number being displayed.

//  Example:
    //  Input: [
    /*  "---OOOOOOOOOO",
        "---OOOOOOOOOO",
        "---OOOOOOOOOO",
        "OOO---OOOOOOO",
        "O---OOOOOOOOO",
        "OOOOOOOOO---O",
        "OO---OOOOOOOO"] */
    // Output: 3192

//  ⌺ Black Diamond Challenge:
    //  Write a function that does the reverse, taking an Int as input and returning a Schoty String as output.

import Foundation

func schoty(wire: [String]) -> Int {
    
    var number: String = 0
    
    if wire[1] == "---OOOOOOOOOO" {
        number = 0
    }
}
