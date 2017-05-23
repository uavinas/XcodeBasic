//
//  StudentListViewControler.swift
//  MyFirstProject
//
//  Created by Ishan Weerasooriya on 5/23/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class StudentListViewControler: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Variable
    var studentNames: [String] = ["John", "Jim", "Kim", "Kennady","Jerry", "Tom", "Carry", "Kenny", "Trump", "Mike", "Michale", "Roshan", "Nimal", "Kumar", "Kasun", "Nuwan", "Abdul", "Hari", "Kavin", "Bharatha"]
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

       
        tableView.dataSource = self
        tableView.delegate = self
        
        print("ViewDIDLoAD")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("will apear")
    }
    
    // MARK: tableview datasource & delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = indexPath.row
       let name = studentNames[row]
        cell.textLabel?.text = name
        return cell
    }

}
