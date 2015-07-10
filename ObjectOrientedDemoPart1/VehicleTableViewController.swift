//
//  VehicleTableViewController.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class VehicleTableViewController: UITableViewController {
    
    var vehicles:[Vehicle] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        setupVehicleArray()
    }
    func setupVehicleArray() {
        //Clear the array
        vehicles.removeAll(keepCapacity: true)
        //create a car
        var mustang = Car()
        mustang.brandName = "Ford"
        mustang.modelName = "Mustang"
        mustang.modelYear = 1968
        mustang.isConvertible = true
        mustang.isHatchBack = false
        mustang.hasSunroof = false
        mustang.numberOfDoor = 2
        mustang.powerSource = "gas engine"
        
        //add it to the array
        vehicles.append(mustang)
        
        //Create another car
        var prius = Car()
        prius.brandName = "Subaru"
        prius.modelName = "Outback"
        prius.modelYear = 1999
        prius.isConvertible = false
        prius.isHatchBack = true
        prius.hasSunroof = false
        prius.numberOfDoor = 5
        prius.powerSource = "gas engine"
        
        //add it to the array
        vehicles.append(prius)
        
        //create another car
        var outback = Car()
        outback.brandName = "Toyota"
        outback.modelName = "Prius"
        outback.modelYear = 2002
        outback.isConvertible = true
        outback.isHatchBack = false
        outback.hasSunroof = true
        outback.numberOfDoor = 4
        outback.powerSource = "gas engine"
        
        //add it to the array
        vehicles.append(outback)
        
        var harley = Motorcycle()
        harley.brandName = "Harley-Davidson"
        harley.modelName = "Softail"
        harley.modelYear = 1979
        harley.engineNoise = "Vroooooooo"
        
        //add it to the array
        vehicles.append(harley)
        
        // Create another motorcycle
        var kawasaki = Motorcycle()
        kawasaki.brandName = "Kawasaki"
        kawasaki.modelName = "Ninja"
        kawasaki.modelYear = 2005
        kawasaki.engineNoise = "Neeeeeeeeeeeeeeeeow!"
        
        // Add it to the array
        self.vehicles.append(kawasaki)
        
        
        // Create a truck
        var silverado = Truck()
        silverado.brandName = "Chevrolet"
        silverado.modelName = "Silverado"
        silverado.modelYear = 2011
        silverado.numberOfwheel = 4
        silverado.cargoCapacityCubicFeet = 53
        silverado.powerSource = "gas engine"
        
        // Add it to the array
        vehicles.append(silverado)
        
        // Create another truck
        var eighteenWheeler = Truck()
        eighteenWheeler.brandName = "Peterbilt"
        eighteenWheeler.modelName = "579"
        eighteenWheeler.modelYear = 2013
        eighteenWheeler.numberOfwheel = 18
        eighteenWheeler.cargoCapacityCubicFeet = 408
        eighteenWheeler.powerSource = "diesel engine"
        
        // Add it to the array
        vehicles.append(eighteenWheeler)
        //Sort the  array be the model year
        vehicles.sort{ $0.modelYear < $1.modelYear }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow(){
                let vehicel = vehicles[indexPath.row]
                (segue.destinationViewController as! VehicleDetailViewController).detailVehicle = vehicel
            }
        }
//        if segue.identifier == "showDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow() {
//                let vehicle = vehicles[indexPath.row]
//                (segue.destinationViewController as! VehicleDetailViewController).detailVehicle = vehicle
//            }
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return vehicles.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        let vehicle = vehicles[indexPath.row]
        cell.textLabel?.text = vehicle.vehicleTitle
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
