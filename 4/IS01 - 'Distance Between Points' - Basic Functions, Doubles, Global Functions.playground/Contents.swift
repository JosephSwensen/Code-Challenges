//  🏔️ MTECH Code Challenge IS01: "Distance Between Points"
//  Concept: Practice converting mathematical formulae into Swift functions and working with doubles.

//  Instructions:
    //  Create a function that finds the distance between two points on an x,y plane.
    //  The function will take in 4 paramaters as doubles (x1,y1,x2,y2)
    //  It will return the distance as a double
    //  Most likely you do not know the formula for finding the distance between two points. Google it.

//  ⌺ Black Diamond Challenge:
    //  Create a struct called "Point" that holds the x and y values of each point, then use instances of Point to calculate the distance.

import Foundation

func findDistance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    var x = x1 - x2
    var x22 = pow(x, 2.0)
    var y = y1 - y2
    var y22 = pow(y, 2.0)
    var answer = x22 + y22
    return sqrt(answer)
}

print(findDistance(x1: 6, y1: 2, x2: 6, y2: 3))
