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

class Bug {
    
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
    
    static func getListOfAllBugs() -> [Bug] {
        var bugs = [Bug]()
        bugs.append(Bug(title: "Centipede", howScary: .AverageScary, imageName: "centipede.jpg"))
        bugs.append(Bug(title: "Ladybug", howScary: .NotScary, imageName: "ladybug.jpg"))
        bugs.append(Bug(title: "Potato Bug", howScary: .QuiteScary, imageName: "potatoBug.jpg"))
        bugs.append(Bug(title: "Wolf Spider", howScary: .Aiiiiieeeee, imageName: "wolfSpider.jpg"))
        bugs.append(Bug(title: "Bee", howScary: .QuiteScary, imageName: "bee.jpg"))
        bugs.append(Bug(title: "Beetle", howScary: .ALittleScary, imageName: "beetle.jpg"))
        bugs.append(Bug(title: "Burrito Insect", howScary: .AverageScary, imageName: "burritoInsect.jpg"))
        bugs.append(Bug(title: "Caterpillar", howScary: .NotScary, imageName: "caterpillar.jpg"))
        bugs.append(Bug(title: "Cicada", howScary: .AverageScary, imageName: "cicada.jpg"))
        bugs.append(Bug(title: "Cockroach", howScary: .QuiteScary, imageName: "cockroach.jpg"))
        bugs.append(Bug(title: "Exoskeleton", howScary: .QuiteScary, imageName: "exoskeleton.jpg"))
        bugs.append(Bug(title: "Fly", howScary: .NotScary, imageName: "fly.jpg"))
        bugs.append(Bug(title: "Giant Moth", howScary: .AverageScary, imageName: "giantMoth.jpg"))
        bugs.append(Bug(title: "Grasshopper", howScary: .Aiiiiieeeee, imageName: "grasshopper.jpg"))
        bugs.append(Bug(title: "Mosquito", howScary: .QuiteScary, imageName: "mosquito.jpg"))
        bugs.append(Bug(title: "Praying Mantis", howScary: .NotScary, imageName: "prayingMantis.jpg"))
        bugs.append(Bug(title: "Roach", howScary: .QuiteScary, imageName: "roach.jpg"))
        bugs.append(Bug(title: "Robber Fly", howScary: .QuiteScary, imageName: "robberFly.jpg"))
        bugs.append(Bug(title: "Scorpion", howScary: .Aiiiiieeeee, imageName: "scorpion.jpg"))
        bugs.append(Bug(title: "Shield Bug", howScary: .AverageScary, imageName: "shieldBug.jpg"))
        bugs.append(Bug(title: "Stag Beetle", howScary: .AverageScary, imageName: "stagBeetle.jpg"))
        bugs.append(Bug(title: "Stink Bug", howScary: .ALittleScary, imageName: "stinkbug.jpg"))
        
        
        return bugs
        
        
    }
    
}
