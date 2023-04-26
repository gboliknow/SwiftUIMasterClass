//
//  ContentView.swift
//  FruitApp
//
//  Created by Gbolahan on 17/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings: Bool = false

    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                              .padding(.vertical,4)
                    }
                
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)    }
}
