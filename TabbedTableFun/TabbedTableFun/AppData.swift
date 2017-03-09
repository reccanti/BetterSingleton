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
    private init() {}
}
