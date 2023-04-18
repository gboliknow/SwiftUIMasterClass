//
//  OnboardingView.swift
//  FruitApp
//
//  Created by Gbolahan on 18/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    var fruits : [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){
                item  in
                FruitCardView(fruit: item)
            }
          
        }
        .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
   
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
