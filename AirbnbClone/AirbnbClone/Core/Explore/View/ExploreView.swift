//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 11/01/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(viewModel: viewModel, show: $showDestinationSearchView)
            }else{
                VStack {
                    
                    ScrollView{
                        SearchAndFilterBarView(loaction: $viewModel.searchLocation)
                            .onTapGesture {
                                withAnimation(.easeInOut){
                                    showDestinationSearchView.toggle()
                                }
                            }
                        LazyVStack(spacing: 32){
                            ForEach(viewModel.listings){ listing in
                                NavigationLink(value: listing) {
                                    ListingItemView(listing: listing).frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                
                            }
                        }
                        
                    }
                    .navigationDestination(for: Listing.self){ listing in
                        ListingDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                        
                    }
                }
            }
       
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
