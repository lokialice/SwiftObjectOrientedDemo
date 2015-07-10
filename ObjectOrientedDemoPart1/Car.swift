//
//  Car.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var isConvertible:Bool = false
    var isHatchBack:Bool = false
    var hasSunroof:Bool = false
    var numberOfDoor:Int = 0
  
    
    override var vehicleDetail: String {
        // Get basic details from superclass
        let basicDetails = super.vehicleDetail
        
        // Initialize mutable string
        var carDetailsBuilder = "\n\nCar-Specific Details:\n\n"
        
        // String helpers for booleans
        let yes = "Yes\n"
        let no = "No\n"
        
        // Add info about car-specific features.
        carDetailsBuilder += "Has sunroof: "
        carDetailsBuilder += hasSunroof ? yes : no
        
        carDetailsBuilder += "Is Hatchback: "
        carDetailsBuilder += isHatchBack ? yes : no
        
        carDetailsBuilder += "Is Convertible: "
        carDetailsBuilder += isConvertible ? yes : no
        
        carDetailsBuilder += "Number of doors: \(numberOfDoor)"
        
        // Create the final string by combining basic and car-specific details.
        let carDetails = basicDetails + carDetailsBuilder
        
        return carDetails
    }
    
    override init() {
        super.init()
        numberOfwheel = 4
    }
    
    private func start() ->String {
        return String(format: "Start power source %@", powerSource)
    }
    
    override func goForward() -> String {
        return String(format: "%@ %@ The depress gas pedal", start(),changeGear("Forward"))
    }
    
    override func goBackward() -> String {
        return String(format: "%@ %@ Check your real view mirror.Then depress gas pedal", start(),changeGear("Reserve"))
    }
    
    override func stopMoving() -> String {
        return String(format: "Depress brake pedal. %@ ", changeGear("Park"))
    }
    
    override func makerNoise() -> String {
        return "Beep ! beep"
    }
}
