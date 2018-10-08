//: [Previous](@previous)

import UIKit

let optionals = "3.1 Optionals"

print("\(optionals) is ?: a value either contains a value or contains nil to indicate that the value is missing")

// Example of Optional Chainning


class Car {
    var make: String = ""
    var model: Model?
}

class Model {
    var modelType: String = ""
    var year: Year?
}

class Year {
    var mileage: Int = 0
    var costOfCar: Int?
}

let typeCar = Car()
typeCar.make = "Toyota"
typeCar.model?.modelType = "4Runner"

let typeModel = Model()
typeModel.year?.mileage = 2019

let typeYear = Year()
typeYear.mileage = 120
typeYear.costOfCar = 20482

if let bestCar = typeCar.model?.year {
    print("Your imaginary car is \(bestCar)")
} else {
    print("Do you even want a car?")
}

let `guard` = "3.3 Guard"

