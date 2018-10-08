
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
 
 */
class Cake {
    var flavor: String
    var frosting: String
    var tiers: Int
    
    init(flavor: String, frosting: String, tiers: Int) {
        flavor = flavor
        frosting = frosting
        tiers = tiers
    }
}
