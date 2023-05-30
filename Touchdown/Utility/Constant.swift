//
//  Constant.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode(file: "player.json")
let categories: [Category] = Bundle.main.decode(file: "category.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(uiColor: UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
// API
// IMAGE
// FONT
// STRING
// MISC
