//
//  Bugs.swift
//  TableViewCell_BugsDisplay_RayChallenge
//
//  Created by Sai Venkata Pranay Boggarapu on 8/1/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class Bug {
    
    var title: String
    var subTitle: String
    var image: UIImage?
    
    init(title: String, subTitle: String, imageName: String?) {
        self.title = title
        self.subTitle = subTitle
        if let imageName = imageName {
            if let image = UIImage(named: imageName) {
                self.image = image
            }
        }
    }
    
}

class Bugs {
    static func getListOfAllBugs() -> [Bug] {
        var bugs = [Bug]()
        bugs.append(Bug(title: "Bee", subTitle: "Subtitle for Bee", imageName: "bee.jpg"))
        bugs.append(Bug(title: "Beetle", subTitle: "approached from beatles band", imageName: "beetle.jpg"))
        
        return bugs
    
    
    }
}
