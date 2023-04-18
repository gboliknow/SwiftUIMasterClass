//
//  FruitModel.swift
//  FruitApp
//
//  Created by Gbolahan on 18/04/2023.
//

import SwiftUI



struct Fruit: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}



