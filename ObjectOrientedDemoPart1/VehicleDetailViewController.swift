//
//  VehicleDetailViewController.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {

    var detailVehicle:Vehicle? {
        didSet{
            self.configureView()
        }
    }
    @IBOutlet var detailDescription: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureView() {
        //upadate the user interface for detail view
        if let vehicle = detailVehicle {
            title = vehicle.vehicleTitle
            detailDescription?.text = vehicle.vehicleDetail
            //car specific detail
           
            //basicDetail += "number of Door:\(vehicle.nu)"
        }
    }
    @IBAction func btnDone(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func btnGoForward(sender: UIButton) {
        if let vehicle =  detailVehicle {
            let controller = UIAlertController.alertControllWithTitle("Go Forward", message: vehicle.goForward())
            presentViewController(controller, animated: true){}
        }
        
    }
    
    @IBAction func btnStopMoving(sender: UIButton) {
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllWithTitle("Stop Moving", message: vehicle.stopMoving())
            presentViewController(controller, animated: true){}
        }
    }
    
    @IBAction func btnGoBackward(sender: UIButton) {
        if let vehicle =  detailVehicle {
            let controller = UIAlertController.alertControllWithTitle("Go Backward ", message: vehicle.goBackward())
            presentViewController(controller, animated: true){}
        }
    }
    
    @IBAction func btnTurn(sender: UIButton) {
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllerWithInput(title: "Turn", message: "Enter number of degrees to turn", buttonTitle: "Go!"){
                integerValue in
                if let value = integerValue {
                    let controller =  UIAlertController.alertControllWithTitle("Turn", message: vehicle.turn(value))
                    self.presentViewController(controller, animated: true,completion:nil)
                }
            }
            presentViewController(controller, animated: true){}
        }
    }
    
    @IBAction func btnMakesomeNoise(sender: UIButton) {
        if let vehicle = detailVehicle {
            let controller = UIAlertController.alertControllWithTitle("Make some noise!", message: vehicle.makerNoise())
             presentViewController(controller, animated: true){}
        }
       
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
