//
//  AnimalModel.swift
//  Africa
//
//  Created by Gbolahan on 10/05/2023.
//

import Foundation

import SwiftUI

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
