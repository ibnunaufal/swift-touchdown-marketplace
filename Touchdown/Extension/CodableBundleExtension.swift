//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Macbook Pro on 30/05/2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(file: String) -> T {
        // : 1. Locate JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file)")
        }
        // : 2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        // : 3. Create decoder
        let decoder = JSONDecoder()
        // : 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode")
        }
        // : 5. Return the ready to use data
        return decodedData
    }
}
