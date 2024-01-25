//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Gbolahan on 23/01/2024.
//

import Foundation

class ExploreViewModel : ObservableObject{
    @Published var listings = [Listing]()
    @Published  var searchLocation = ""
    private let service : ExploreService
    private var listingsCopy = [Listing]()
    
    init(service : ExploreService) {
        self.service = service
        
        Task{ await fetchListings() }
    }
    
    func fetchListings()  async{
        do{
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        }catch{
            print("DEBug : Failed to fetch listings with error : \(error.localizedDescription)")
        }
    }
    
    func uddateListingsForLocation(){
        let filteredListings = listings.filter({
            
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.State.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
