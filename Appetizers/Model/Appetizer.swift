//
//  Appetizer.swift
//  Appetizers
//
//  Created by Imam Robani on 28/09/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is description for my appetizer. It's Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 56,
                                           protein: 44,
                                           carbs: 67)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
