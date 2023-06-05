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
let products: [Product] = Bundle.main.decode(file: "product.json")
let brands: [Brand] = Bundle.main.decode(file: "brand.json")
let sampleProduct: Product = products[1]

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
let feedback = UIImpactFeedbackGenerator(style: .medium)

// API
// IMAGE
// FONT
// STRING
// MISC
