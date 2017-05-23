//
//  FruitsViewController.swift
//  MyFirstProject
//
//  Created by Ishan Weerasooriya on 5/23/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

// adding protocols
class FruitsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Variables
    
    var fruits: [String] = ["Apple", "Orange", "Banana", "Grapes", "Papaya", "Watermellon", "Woodapple", "Goa", "Pomegranate", "Jackfruit", "Mango", "Strawberry", "Gooseberry", "Pears", "Mangoosteen"]
    
   
    
    
   
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        print(fruits)

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
      
    }
    
    // MARK: UITableview Datasource & Deletegate
    
    // this function is used to return the value of an array
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return 10
        return fruits.count // to avoid errors while changing the value of an array
        
    }
    // this function is used to assign the array to tableview rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tablecell = UITableViewCell()
        let tablerow = indexPath.row
        let fruitNames = fruits[tablerow]
        tablecell.textLabel?.text = fruitNames
        
        return tablecell
        
        
    }
    
}
