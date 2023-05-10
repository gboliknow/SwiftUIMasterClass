//
//  ContentView.swift
//  Africa
//
//  Created by Gbolahan on 10/05/2023.
//

import SwiftUI

struct ContentView: View {
     let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top:0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){
                    animal in
                    AnimalListItemView(animal: animal)
                }
            }
            .navigationTitle("Africa")
          
        }
     
      
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
