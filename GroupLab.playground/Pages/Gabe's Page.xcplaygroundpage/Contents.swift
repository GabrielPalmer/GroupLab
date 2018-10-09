
import Foundation


/*
 In the countTo function, why doesn't i in the final print statement work? Comment your answer beneath the line of code. What could replace i so that it would always have the desired value? Rewrite the print statement in a way that works every time.
 */

func countTo(num: Int) {
    
    for i in 1...num {
        print(i)
    }
    
    print("The final number was \(i)")
}



/*
 Type shadowing is when variables with the same name exist in the same scope. But the compiler will always use the values from the nearest scope.
 In the Cake class initializer, add a keyword that could be used to distinguish between the class properties and the initializer parameters.
 */

class Cake {
    let flavor: String
    let frosting: String
    let tiers: Int
    
    init(flavor: String, frosting: String, tiers: Int) {
        flavor = flavor
        frosting = frosting
        tiers = tiers
    }
}























//enum example

enum FarmAnimals: String {
    case chicken = "chicken"
    case horse = "horse"
    case cow = "cow"
    case sheep = "sheep"
    case dog = "dog"
    case pig = "pig"
}

func animalNoise(animal: FarmAnimals) {
    switch animal {
    case .chicken:
        print("Cluck Cluck")
    case .horse:
        print("Neeeiiigh")
    case .cow:
        print("Moooo")
    case .sheep:
        print("Baaa")
    case .dog:
        print("Bark Bark")
    case .pig:
        print("Oink!")
    }
}

///////////////////////////////////////////////////////////// ANSWER KEY /////////////////////////////////////////////////////////////////////////

/*

func countTo(num: Int) {
    
    for i in 1...num {
        print(i)
    }
    
    print("The final number was \(num)")
}




class Cake {
    let flavor: String
    let frosting: String
    let tiers: Int
    
    init(flavor: String, frosting: String, tiers: Int) {
        self.flavor = flavor
        self.frosting = frosting
        self.tiers = tiers
    }
}

 */
