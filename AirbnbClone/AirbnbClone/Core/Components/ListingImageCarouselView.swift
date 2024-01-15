//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 15/01/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "pexel-1",
        "pexel-2",
        "pexel-3",
        "pexel-4",
    ]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){
                image in
                Image(image).resizable().scaledToFill()
                
            }
        }
      
        .tabViewStyle(.page)
    }
}



struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView()
    }
}
