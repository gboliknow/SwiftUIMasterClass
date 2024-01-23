//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Gbolahan on 23/01/2024.
//

import Foundation

class ExploreService{
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
