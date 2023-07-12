//
//  ProductDetailView.swift
//  SoccerApp
//
//  Created by Gbolahan on 06/07/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading ,spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
              .padding(.horizontal)
              .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // HEADER
            HeaderDetailView()
              .padding(.horizontal)
            
            
            // DETAIL TOP PART
            TopPartDetailView()
              .padding(.horizontal)
              .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATINGS + SIZES
                RatingSizeDetailView()
                  .padding(.top, -20)
                  .padding(.bottom, 10)
              
              // DESCRIPTION
              ScrollView(.vertical, showsIndicators: false, content: {
                  Text(shop.selectedProduct?.description ?? sampleProduct.description)
                  .font(.system(.body, design: .rounded))
                  .foregroundColor(.gray)
                  .multilineTextAlignment(.leading)
              }) //: SCROLL
              
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                  .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                  .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all , edges: .all)
        .background(
          Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
          ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
