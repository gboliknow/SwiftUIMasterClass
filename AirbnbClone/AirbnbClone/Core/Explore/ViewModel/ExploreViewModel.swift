//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Gbolahan on 23/01/2024.
//

import Foundation

class ExploreViewModel : ObservableObject{
    @Published var listings = [Listing]()
    private let service : ExploreService
    
    init(service : ExploreService) {
        self.service = service
        
        Task{ await fetchListings() }
    }
    
    func fetchListings()  async{
        do{
            self.listings = try await service.fetchListings()
        }catch{
            print("DEBug : Failed to fetch listings with error : \(error.localizedDescription)")
        }
    }
    
}
