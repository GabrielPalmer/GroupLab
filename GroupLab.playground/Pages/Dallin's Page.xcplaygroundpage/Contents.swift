//: [Previous](@previous)

import UIKit

let optionals = "3.1 Optionals"

print("\(optionals) is ?: a value either contains a value or contains nil to indicate that the value is missing")

// Example of Optional Chainning

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

let typeYear = Year(mileage: 37, costOfCar: "399201", manufacturedYear: 2019)

let typeModel = Model(modelType: "4Runner", year: typeYear)


let typeCar = Car(make: "Toyota", model: typeModel)



if let bestCar = typeCar.model {
    print("Your imaginary car is Make: \(bestCar.modelType), Model: \(typeCar.make), Year: \(typeYear.manufacturedYear), Mileage: \(typeYear.mileage). It will cost \(typeYear.costOfCar) dollars to get the car.")
} else {
    print("Do you even want a car?")
}

let `guard` = "3.3 Guard"

