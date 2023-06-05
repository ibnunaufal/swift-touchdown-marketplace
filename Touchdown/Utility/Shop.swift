//
//  Shop.swift
//  Touchdown
//
//  Created by Macbook Pro on 05/06/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
