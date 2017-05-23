//
//  HomeViewController.swift
//  MyFirstProject
//
//  Created by Ishan Weerasooriya on 5/23/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var LblOut: UILabel!
    @IBOutlet weak var TxtuName: UITextField!
    @IBOutlet weak var Txtpassword: UITextField!
   // @IBOutlet weak var TabContact: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    @IBAction func BtnClick(_ sender: Any) {
        
        print("Hello World")
        LblOut.text = "Hello World !"
    }
    
    func showMessage() {
        let alertController = UIAlertController(title: "Welcome User", message: "Login Succeed", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
    func showmessage2() {
    
        let alertController = UIAlertController(title: "Welcome User", message: "Login Failed", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)

    
    }

   
    @IBAction func BtnLogin(_ sender: Any) {
        
        if TxtuName.text == "admin" && Txtpassword.text == "123" {
        
            print("Login Succeed")
            showMessage()
        
        } else {
        
            showmessage2()
            print("Login Failed")
        }
    }
    
    
    

}
