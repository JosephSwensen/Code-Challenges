//  🏔️ MTECH Code Challenge SF07: "Formatting Currency"
//  Concept: Use string formatting to display a number in a specific format

//  Instructions:
    //  The company you work for has just been awarded a contract to build a payment gateway.
    //  In order to help move things along, you have volunteered to write code that will take a double and return the amount formatting in dollars and cents.

//  Notes:
    //  The rest of your team will make sure that the input is sanitized before being passed to your code, although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).

// Examples:
    //  Input: 39.99, Output: "$39.99"
    //  Input: 3, Output: "$3.00"
    //  Input: 3.1, Output: "$3.10"

//  ⌺ Black Diamond Challenge:
    //  Use a different method to convert the double to a currency than you did in the first.
    //  Look up the current conversion rate for USD -> JPY (yen). Create another code block that will first convert the input to yen before outputting the formatted amount, prefixed with "¥" (the symbol for yen).

import Foundation

let input: String = "39.9"

if input.hasSuffix(String: String(0))  {
    print("$\(input)")
} else {
    print("$\(input)\(0)")
}


