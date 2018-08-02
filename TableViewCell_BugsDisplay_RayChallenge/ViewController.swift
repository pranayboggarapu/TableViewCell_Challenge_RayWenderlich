//
//  ViewController.swift
//  TableViewCell_BugsDisplay_RayChallenge
//
//  Created by Sai Venkata Pranay Boggarapu on 8/1/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    

    var bugs = [Bug]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bugs = Bugs.getListOfAllBugs()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bugs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bugCell", for: indexPath)
        let individualBug = bugs[indexPath.row]
        cell.textLabel?.text = individualBug.title
        cell.detailTextLabel?.text = Bug.scaryFactorToString(scaryFactor: individualBug.howScary)
        if let image = individualBug.image {
            cell.imageView?.image = image
        }
        return cell
    }
}

