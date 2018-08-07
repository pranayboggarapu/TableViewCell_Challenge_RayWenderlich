//
//  Bugs.swift
//  TableViewCell_BugsDisplay_RayChallenge
//
//  Created by Sai Venkata Pranay Boggarapu on 8/1/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

enum ScaryFactor: Int {
    case NotScary
    case ALittleScary
    case AverageScary
    case QuiteScary
    case Aiiiiieeeee
}

class ScaryBug {
    
    var title: String
    var howScary: ScaryFactor
    var image: UIImage?
    
    init(title: String, howScary: ScaryFactor, imageName: String?) {
        self.title = title
        self.howScary = howScary
        if let imageName = imageName {
            if let image = UIImage(named: imageName) {
                self.image = image
            }
        }
    }
    
    static func scaryFactorToString(scaryFactor:ScaryFactor) -> String {
        var scaryString = ""
        switch(scaryFactor) {
        case .NotScary:
            scaryString = "Not scary"
        case .ALittleScary:
            scaryString = "A little scary"
        case .AverageScary:
            scaryString = "Average scariness"
        case .QuiteScary:
            scaryString = "Quite scary"
        case .Aiiiiieeeee:
            scaryString = "AIIIIIEEEEEEE!!"
        }
        return scaryString
    }
    
    
    
}

class Bugs {
    
    static func getListOfAllBugs() -> [ScaryBug] {
        var bugs = [ScaryBug]()
        bugs.append(ScaryBug(title: "Centipede", howScary: .AverageScary, imageName: "centipede.jpg"))
        bugs.append(ScaryBug(title: "Ladybug", howScary: .NotScary, imageName: "ladybug.jpg"))
        bugs.append(ScaryBug(title: "Potato Bug", howScary: .QuiteScary, imageName: "potatoBug.jpg"))
        bugs.append(ScaryBug(title: "Wolf Spider", howScary: .Aiiiiieeeee, imageName: "wolfSpider.jpg"))
        bugs.append(ScaryBug(title: "Bee", howScary: .QuiteScary, imageName: "bee.jpg"))
        bugs.append(ScaryBug(title: "Beetle", howScary: .ALittleScary, imageName: "beetle.jpg"))
        bugs.append(ScaryBug(title: "Burrito Insect", howScary: .AverageScary, imageName: "burritoInsect.jpg"))
        bugs.append(ScaryBug(title: "Caterpillar", howScary: .NotScary, imageName: "caterpillar.jpg"))
        bugs.append(ScaryBug(title: "Cicada", howScary: .AverageScary, imageName: "cicada.jpg"))
        bugs.append(ScaryBug(title: "Cockroach", howScary: .QuiteScary, imageName: "cockroach.jpg"))
        bugs.append(ScaryBug(title: "Exoskeleton", howScary: .QuiteScary, imageName: "exoskeleton.jpg"))
        bugs.append(ScaryBug(title: "Fly", howScary: .NotScary, imageName: "fly.jpg"))
        bugs.append(ScaryBug(title: "Giant Moth", howScary: .AverageScary, imageName: "giantMoth.jpg"))
        bugs.append(ScaryBug(title: "Grasshopper", howScary: .Aiiiiieeeee, imageName: "grasshopper.jpg"))
        bugs.append(ScaryBug(title: "Mosquito", howScary: .QuiteScary, imageName: "mosquito.jpg"))
        bugs.append(ScaryBug(title: "Praying Mantis", howScary: .NotScary, imageName: "prayingMantis.jpg"))
        bugs.append(ScaryBug(title: "Roach", howScary: .QuiteScary, imageName: "roach.jpg"))
        bugs.append(ScaryBug(title: "Robber Fly", howScary: .QuiteScary, imageName: "robberFly.jpg"))
        bugs.append(ScaryBug(title: "Scorpion", howScary: .Aiiiiieeeee, imageName: "scorpion.jpg"))
        bugs.append(ScaryBug(title: "Shield Bug", howScary: .AverageScary, imageName: "shieldBug.jpg"))
        bugs.append(ScaryBug(title: "Stag Beetle", howScary: .AverageScary, imageName: "stagBeetle.jpg"))
        bugs.append(ScaryBug(title: "Stink Bug", howScary: .ALittleScary, imageName: "stinkbug.jpg"))
        
        
        return bugs
        
        
    }
    
}
