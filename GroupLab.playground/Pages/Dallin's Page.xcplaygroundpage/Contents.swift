//: [Previous](@previous)

import UIKit

// OPTIONALS

// What does the "?" mean and do?

// Whats the code to force unwrap?

// where in the code do you unwrap?

let optionals = "3.1 Optionals"

print("\(optionals) is ?: a value either contains a value or contains nil to indicate that the value is missing")

// Example of Optional Chainning or binding, force-unwrap and optional

class Car {
    var make: String
    var model: Model?
    
    
    init(make: String, model: Model?) {
        self.make = make
        self.model = model
    }
}

class Model {
    var modelType: String
    var year: Year?
    
    init(modelType: String, year: Year?) {
        self.modelType = modelType
        self.year = year
    }
}

class Year {
    var mileage: Int
    var costOfCar: String?
    var manufacturedYear: Int
    
    init(mileage: Int, costOfCar: String?, manufacturedYear: Int) {
        self.mileage = mileage
        self.costOfCar = costOfCar
        self.manufacturedYear = manufacturedYear
    }
}

let typeYear = Year(mileage: 37, costOfCar: "399,201", manufacturedYear: 2019)

let typeModel = Model(modelType: "4Runner", year: typeYear)

let typeCar = Car(make: "Toyota", model: typeModel)



if let bestCar = typeCar.model {
    print("Your imaginary car is Make: \(bestCar.modelType), Model: \(typeCar.make), Year: \(typeYear.manufacturedYear), Mileage: \(typeYear.mileage). It will cost \(String(describing: typeYear.costOfCar!)) dollars to get the car.")
} else {
    print("Do you even want a car?")
}


///////////////////////////////////////////////////////////////////////////////////////

// GUARD

// Why cant I use my if and else statement instead of guard?

// What does guard let do?

// Why you need "return nil" instead of just "return"?


let `guard` = "3.3 Guard"

print("\(`guard`) is like an if and else statement but you use guard instead.")

// Example of guard

struct Person {
    let firstName: String
    let lastName: String
    var age: String
    var address: String
    let yearYouWereBorn: String
}

let firstNameTextField = UITextView()
let lastNameTextField = UITextView()
let ageTextField = UITextView()
let addressTextField = UITextView()
let yearYouWereBornTextField = UITextView()

firstNameTextField.text = "Bill"
lastNameTextField.text = "Schue"
ageTextField.text = "39"
addressTextField.text = "1827 Provo Dr. Provo UT 39281"
yearYouWereBornTextField.text = "1923"


func creatPerson() -> Person? {
    guard let unwrapFirstName = firstNameTextField.text, let unwrapLastName = lastNameTextField.text, let unwrapAge = ageTextField.text, let unwrapAddress = addressTextField.text, let unwrapYearYouWereBorn = yearYouWereBornTextField.text else {return nil}
    
    return Person(firstName: unwrapFirstName, lastName: unwrapLastName, age: unwrapAge, address: unwrapAddress, yearYouWereBorn: unwrapYearYouWereBorn)
}



