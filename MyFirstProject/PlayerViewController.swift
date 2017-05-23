//
//  PlayerViewController.swift
//  MyFirstProject
//
//  Created by Ishan Weerasooriya on 5/23/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: Variables
    
    var gamesEvents: [String] = ["Cricket", "Football", "Netball", "ellea", "Vollyball", "Swimming", "Hockey", "Javilin Throw", "Road Race", "Relay", "LongJump", "HighJump"]
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    //MARK: UItableview datasource and delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamesEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        let row = indexPath.row
        let Events = gamesEvents[row]
        
        cell.textLabel?.text = Events
        return cell
        
        
        
    
    }

   
}
