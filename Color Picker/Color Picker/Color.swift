//
//  Color.swift
//  Color Picker
//
//  Created by Shannon, Leandre D. (MU-Student) on 11/16/17.
//  Copyright © 2017 Shannon, Leandre D. (MU-Student). All rights reserved.
//

import UIKit

struct Color {
    let name: String
    let uiColor: UIColor
    
    init(name: String, uiColor: UIColor) {
        self.name = name
        self.uiColor = uiColor
    }
}
