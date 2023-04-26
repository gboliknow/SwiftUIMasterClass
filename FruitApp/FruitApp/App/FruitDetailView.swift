//
//  FruitDetailView.swift
//  FruitApp
//
//  Created by Gbolahan on 26/04/2023.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
       
        NavigationView{
            ScrollView(.vertical , showsIndicators: false){
                // HEADER
                FruitHeaderView(fruit: fruit)
                VStack(alignment: .center, spacing: 20){
                    // TITLE
                    Text(fruit.title)
                      .font(.largeTitle)
                      .fontWeight(.heavy)
                      .foregroundColor(fruit.gradientColors[1])

                    Text(fruit.headline)
                      .font(.headline)
                      .multilineTextAlignment(.leading)
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    // SUBHEADLINE
                    Text("Learn more about \(fruit.title)".uppercased())
                      .fontWeight(.bold)
                      .foregroundColor(fruit.gradientColors[1])
                    
                    // DESCRIPTION
                    Text(fruit.description)
                      .multilineTextAlignment(.leading)
                    
                    // LINK
                    SourceLinkView()
                      .padding(.top, 10)
                      .padding(.bottom, 40)
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            }
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}