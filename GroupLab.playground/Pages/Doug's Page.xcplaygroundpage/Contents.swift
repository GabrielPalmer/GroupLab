
import Foundation

/*
 
 TYPE CASTING
 
*/



// Here is a class House.

class House {
    var windows: Int = 0
    
    init(windows: Int) {
        self.windows = windows
    }
}


// Knowing that class Apartment is a subclass of House, what would the method of the initializer look like based on its perameters?

class Apartment: House {
    var hasGarage: Bool = false
    
    init(windows:Int, hasGarage:Bool) {
        self.hasGarage = hasGarage
        
        super.init(windows: windows)
    }
}

// Create a class CardboardBox that is a a subclass of House. Give CardboardBox a Bool property called hasDoor and set it to false. Then initialize it.

class CardboardBox: House {
    var hasDoor: Bool = false
    
    init(windows:Int, hasDoor:Bool) {
        self.hasDoor = hasDoor
        
        super.init(windows: 0)
    }
    
 // Based on this superclass and its two subclasses, create an instance of Apartment that has 8 windows and a garage.
    
    let apartment:House = Apartment(windows: 8, hasGarage: true)
    
    
    
}

/*
 SCOPE
 
 How can there be a constant donut with value of 4, but also be a variable donut with a value of 0?
*/

let donut = 4

func giveMeDonuts() {
var donut = 0
    for _ in 1...12 {
        donut += 1
        print(donut)
    }
    
}
