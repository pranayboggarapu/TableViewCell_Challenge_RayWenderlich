//
//  BugSection.swift
//  TableViewCell_BugsDisplay_RayChallenge
//
//  Created by Pranay Boggarapu on 8/6/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import Foundation

class BugSection {
    
    let howScaryFactor: ScaryFactor
    var bugs = [ScaryBug]()
    
    init(howScary: ScaryFactor) {
        self.howScaryFactor = howScary
    }
}
