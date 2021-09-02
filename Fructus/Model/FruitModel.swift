//
//  FruitModel.swift
//  Fructus
//
//  Created by Mariano Ledesma on 01/09/2021.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
