//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
