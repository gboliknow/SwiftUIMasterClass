//
//  SearchAndFilterBarView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 12/01/2024.
//

import SwiftUI

struct SearchAndFilterBarView: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Any where - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
              
                
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
          
        }
        .padding(.horizontal)
        .padding(.vertical, 18)
        .overlay{
            Capsule()
                .stroke()
                .foregroundStyle(Color(.systemGray))
                .shadow(color : .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

struct SearchAndFilterBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBarView()
    }
}
