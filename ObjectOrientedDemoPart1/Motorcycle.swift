//
//  Motorcycle.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class Motorcycle: Vehicle {
   
    var engineNoise = ""
    override init(){
        super.init()
        numberOfwheel = 2
        powerSource = "gas engine"
    }
    override func goForward() -> String {
        return String(format: "%@ Open throtle.", changeGear("Forward"))
    }
    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet", changeGear("Neutral"),modelName)
    }
    override func stopMoving() -> String {
        return "Squeeze brakes"
    }
    override func makerNoise() -> String {
        return self.engineNoise
    }
    override var vehicleDetail:String {
        //get basic detail from superclass
        let basicDetail = super.vehicleDetail
        
        //initialize mutable string
        var motorcycleDetailsBuilder = "\n\nMotocycle-Specific Details:\n\n"
        
        //Add info about motocycle-specific feature
        motorcycleDetailsBuilder += "Engine Noise:\(engineNoise)"
        
        let motocycleDetail = basicDetail + motorcycleDetailsBuilder
        return motocycleDetail
    }
}
