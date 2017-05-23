//
//  UserRegistrationViewController.swift
//  MyFirstProject
//
//  Created by Ishan Weerasooriya on 5/23/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class UserRegistrationViewController: UIViewController {

    
    //MARK: Outlets
   
    @IBOutlet weak var Barbtnshow: UISwitch!
    @IBOutlet weak var Lblout: UILabel!
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func showhint() {
    
        if Barbtnshow.isEnabled == false {
            
            Lblout.text = "Please Turn On The Switch"
            print("please turn on the switch")
            
            
        } else if Barbtnshow.isEnabled == true {
            
            Lblout.text = "Please Fill The Followings"
            print("Please fill the followings")
            
        }

    
    }
    
    @IBAction func BtnHintSwitch(_ sender: Any) {
        
        showhint()
       
    }
    
    

   
}
