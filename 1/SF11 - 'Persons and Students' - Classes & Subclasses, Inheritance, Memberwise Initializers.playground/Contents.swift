//  🏔️ MTECH Code Challenge SF11: "Persons and Students"
//  Concept: Practice creating classes, using inheritance to create subclasses, and creating initializers

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Create a Person class
    //  Include a name, age, weight, and favoriteColor properties
class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String
    
    init(name: String, age: Int, weight: Double, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}



//  2) Create a Student class
    //  This class inherits from Person.
    //  A student also has a currentClass, a grade, and a gpa property
class Student: Person {
    var currentClass: String
    var grade: Int
    var GPA: Double
    
    init(currentClass: String, grade: Int, GPA: Double) {
        self.currentClass = currentClass
        self.grade = grade
        self.GPA = GPA
        
        super.init(name: "", age: Int(), weight: Double(), favoriteColor: "")
    }
}
//  ⌺ Black Diamond Challenge:
    //  Create a third class called Teacher.
    //  Include a reasonable set of properties.
    //  Write a function that can take either a student or a teacher and print their age.
