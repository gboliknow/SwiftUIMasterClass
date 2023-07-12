//
//  Shop.swift
//  SoccerApp
//
//  Created by Gbolahan on 04/07/2023.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}

