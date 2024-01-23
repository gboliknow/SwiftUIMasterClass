//
//  ListingView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 11/01/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing : Listing
    var body: some View {
        VStack(spacing: 8){
            //images
        
            ListingImageCarouselView(listing: listing)
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
           
            
            //listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("\(listing.city) , \(listing.State)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away ")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 18")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing :4){
                        Text("$\(listing.price)")
                            .fontWeight(.semibold)
                    
                        Text(" Night")
                    }        .foregroundStyle(.black)
                    
                    
                    
                }
                
                Spacer()
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text(String(format: "%.1f", listing.rating))
                    
                }
                .foregroundStyle(.black)
                
            }
            
        } .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
