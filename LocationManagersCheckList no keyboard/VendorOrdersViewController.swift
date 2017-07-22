//
//  VendorOrdersViewController.swift
//  LocationManagersCheckList no keyboard
//
//  Created by Zachary Quemore on 7/22/17.
//  Copyright © 2017 Zachary Quemore. All rights reserved.
//

import UIKit

class VendorOrdersViewController: UIViewController {
    
    var currentLocation = ""
    var CurrentLocationID = ""
    var firstTimeAlert = true

    override func viewDidLoad() {
        super.viewDidLoad()
        print(currentLocation)
        
        if firstTimeAlert == true {
           self.displayAlert("Welcome to the Vendor Order Section", error: "Please click on the settings button to add your vendors information first. This will allow you to send your orders directly to them through the App.")
            firstTimeAlert = false
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //Helper Methiods
    //this function creats and alert that you can display errors with
    func displayAlert(_ title:String,error:String){
        
        let alert = UIAlertController(title:title, message: error, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            // self.dismissViewControllerAnimated(true, completion: nil)
        }))
        
        
        self.present(alert, animated: true, completion: nil)
        
    }

}
