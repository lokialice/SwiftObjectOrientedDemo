//
//  UiAlertViewController.swift
//  ObjectOrientedDemoPart1
//
//  Created by Macbook Pro MD102 on 5/17/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

extension UIAlertController {
    class func alertControllWithTitle(title:String,message:String ) -> UIAlertController{
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        controller.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        return controller
        
    }
    
    class func alertControllerWithInput(#title:String,message:String,buttonTitle:String,handler:(Int?)-> Void) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        controller.addTextFieldWithConfigurationHandler{ $0.keyboardType = .Default }
        controller.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        controller.addAction(UIAlertAction(title: buttonTitle, style: .Default) { action in
            let textFields = controller.textFields as? [UITextField]
            let value = textFields?[0].text.toInt()
            handler(value)
            
        })
        return controller
    }

}
