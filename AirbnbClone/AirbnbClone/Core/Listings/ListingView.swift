//
//  ListingView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 11/01/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "pexel-1",
    "pexel-2",
    "pexel-3",
    "pexel-4",
    ]
    var body: some View {
        VStack(spacing: 8){
            //images
        
            ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
           
            
            //listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Maimi , Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away ")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 18")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing :4){
                        Text("$567")
                            .fontWeight(.semibold)
                    
                        Text(" Night")
                    }        .foregroundStyle(.black)
                    
                    
                    
                }
                
                Spacer()
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                    
                }
                .foregroundStyle(.black)
                
            }
            
        } .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
