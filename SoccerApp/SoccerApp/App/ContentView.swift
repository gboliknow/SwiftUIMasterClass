//
//  ContentView.swift
//  SoccerApp
//
//  Created by Gbolahan on 14/06/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack {
                    //Navigation
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top,
                                 UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color :Color.black.opacity(0.05) ,radius: 5, x: 0, y: 5)
                    
                    //Scroll view
                    ScrollView(.vertical, showsIndicators: false, content: {
                      VStack(spacing: 0) {
                        FeaturedTabView()
                              .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                          .padding(.vertical, 20)
                        
                          CategoryGridView()
                        TitleView(title: "Helmets")
                          LazyVGrid(columns: gridLayout, spacing: 15, content: {
                              ForEach(products, content: {product in
                                  ProductItemView(product: product)
                                      .onTapGesture{
                                          feedback.impactOccurred()
                                          withAnimation(.easeOut){
                                              shop.selectedProduct = product
                                              shop.showingProduct = true
                                          }
                                      }
                              })
                          })
                          .padding(15)
                          TitleView(title: "Brands")
                          BrandGridView()
                        FooterView()
                          .padding(.horizontal)
                      } //: VSTACK
                    })
                
                }
                .background(colorBackground.ignoresSafeArea(.all , edges: .all))
            } else {
ProductDetailView()
            }
        }
        .ignoresSafeArea(.all ,edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
