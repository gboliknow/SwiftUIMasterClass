//
//  CategoryModel.swift
//  SoccerApp
//
//  Created by Gbolahan on 05/07/2023.
//

import Foundation
struct Category : Codable , Identifiable {
    let id : Int
    let name : String
    let image : String
}
