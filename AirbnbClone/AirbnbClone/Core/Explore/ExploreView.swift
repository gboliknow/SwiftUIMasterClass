//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 11/01/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0...10, id: \.self){ listing in
                        
                        ListingItemView().frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
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
