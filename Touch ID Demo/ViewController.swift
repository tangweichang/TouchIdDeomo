//
//  ViewController.swift
//  Touch ID Demo
//
//  Created by TangWeichang on 10/20/15.
//  Copyright © 2015 TangWeichang. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let authenticationContext = LAContext()
        var error: NSError?
        if authenticationContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error) {
            authenticationContext.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "We need to know who you are...") { (success, error) -> Void in
                if success {
                    // User has authenticated
                } else {
                    if let error = error {
                        // There was an error
                    } else {
                        //User did not authenticate
                    }
                }
            }

            
        } else {
            // No touch id available
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

