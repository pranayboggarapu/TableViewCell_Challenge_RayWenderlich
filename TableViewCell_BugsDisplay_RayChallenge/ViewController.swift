//
//  ViewController.swift
//  TableViewCell_BugsDisplay_RayChallenge
//
//  Created by Sai Venkata Pranay Boggarapu on 8/1/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var bugSections = [BugSection]()

    
    
    private func setupBugs() {
        bugSections.append(BugSection(howScary: .NotScary))
        bugSections.append(BugSection(howScary: .ALittleScary))
        bugSections.append(BugSection(howScary: .AverageScary))
        bugSections.append(BugSection(howScary: .QuiteScary))
        bugSections.append(BugSection(howScary: .Aiiiiieeeee))
        
        let bugs = Bugs.getListOfAllBugs()
        
        for bug in bugs {
            let bugSection = bugSections[bug.howScary.rawValue]
            bugSection.bugs.append(bug)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBugs()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bugSections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bugSections[section].bugs.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ScaryBug.scaryFactorToString(scaryFactor: bugSections[section].howScaryFactor)
        //bugSections[section].howScaryFactor.rawValue
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bugCell", for: indexPath)
        let bugsection = bugSections[indexPath.section]
        let individualBug = bugsection.bugs[indexPath.row]
        cell.textLabel?.text = individualBug.title
//        cell.detailTextLabel?.text = Bug.scaryFactorToString(scaryFactor: individualBug.howScary)
        if let image = individualBug.image {
            cell.imageView?.image = image
        }
        return cell
    }
}

