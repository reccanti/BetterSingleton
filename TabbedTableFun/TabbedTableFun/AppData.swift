//
//  AppData.swift
//  TabbedTableFun
//
//  Created by Benjamin Wilcox on 3/9/17.
//  Copyright © 2017 Ima Student. All rights reserved.
//

import Foundation

class AppData {
    static let shared = AppData()
    
    var data = [
        "Butterflies",
        "Cotton Candy",
        "LOLCats",
        "Lollipops",
        "Love Songs",
        "Puppy Dogs",
        "Rainbows",
        "Smiling Pandas",
        "Sunshine"
    ]
    
    // hidden data
    private var data2 = [
        "colors": ["red", "green", "blue", "orange"],
        "monsters": ["orc", "kirin", "gray ooze", "zombie"],
        "heroes": ["Gilgamesh", "King Arthur", "Roland", "Aragorn"]
    ]
    
    private var data3 = [
        (["monster", "green", "neutral"], "Hulk"),
        (["hero", "green", "good"], "The Green Giant"),
        (["monster", "white", "good"], "Uni the Unicorn"),
        (["monster", "white", "neutral"], "Moby Dick")
    ]
    
    // returns a list of all the keys in data2
    var categories: [String] {
        return [String](data2.keys)
    }
    
    private init() {}
    
    /**
     * fetch data based on the category
     */
    func fetchAll(category: String)->[String] {
        return data2[category] ?? [String]()
    }
    
    /**
     * fetch data based on a given tag
     */
    func fetchAll(tag:String)->[([String], String)] {
        return data3.filter { $0.0.contains(tag) } 
    }
}
