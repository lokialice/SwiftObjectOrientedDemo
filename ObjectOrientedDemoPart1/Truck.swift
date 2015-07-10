//
//  Truck.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class Truck: Vehicle {
    var cargoCapacityCubicFeet:Int = 0
    override func goForward() -> String {
        return String(format:"%@ Depress gas pedal.", changeGear("Drive"))
    }
    
    override func stopMoving() -> String {
        return String(format:"Depress brake pedal. %@", changeGear("Park"))
    }
    private func soundBackAlarm() -> String {
        return "Beep ! beep!"
    }
    override func goBackward() -> String {
        if cargoCapacityCubicFeet > 100 {
            //sound a backup alarm first
            return String(format: "Wait for \"%@\",then %@", soundBackAlarm(),changeGear("Reserve"))
            
        }else {
            return String(format: "%@ Depress gas depal", changeGear("Reserve"))
        }
    }
    override func makerNoise() -> String {
        switch numberOfwheel {
        case Int.min...4:
           return "Beep beep"
        case 5...8:
            return "Honk"
        default:
            return "Hooooook!"
        }
    }
    override var vehicleDetail:String {
        let basicDeatil = super.vehicleDetail
        
        var truckDetailBuilder = "\n\nTruck-Specific Details:\n\n"
        truckDetailBuilder += "Cargo Capacity: \(cargoCapacityCubicFeet) cubic feet"
        let truckDetail = basicDeatil + truckDetailBuilder
        
        return truckDetail
    }
}
