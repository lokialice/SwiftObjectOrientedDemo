//
//  Vehicle.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import Foundation

class Vehicle {
    var brandName = "null"
    var modelName = "null"
    var modelYear = 0
    var powerSource = "null"
    var numberOfwheel = 0
    var vehicleTitle:String {
        return String(format: "%d %@ %@", modelYear,brandName,modelName )
    }
    var vehicleDetail:String {
        var details = "Basic vehicle details:\n\n"
        details += "Brand name: \(brandName)\n"
        details += "Model name:\(modelName)\n"
        details += "Model year:\(modelYear)\n"
        details += "Power source:\(powerSource)\n"
        details += "# of wheels:\(numberOfwheel)\n"
        return details
    }
    func goForward() -> String {
        return "null"
    }
    func goBackward() -> String {
        return "null"
    }
    func  stopMoving() -> String {
        return "null"
    }
    
    func turn(degrees:Int) -> String {
        var normalizedDegrees = degrees
        
        //Since there only 360 degrees in a circle, calculate what a single turn would be
        let degreesInCircle = 360
        
        if(normalizedDegrees > degreesInCircle || normalizedDegrees < -degreesInCircle){
            //the % operator return the remainder after driving
            normalizedDegrees = normalizedDegrees % degreesInCircle
        }
        return String(format: "Turn %d degrees.",normalizedDegrees)
    }
    
    func changeGear(newGearName:String) -> String {
        return String(format: "Put %@ into %@ gear", self.modelName,newGearName)
    }
    
    func makerNoise() -> String{
        return "null"
    }
   
}
