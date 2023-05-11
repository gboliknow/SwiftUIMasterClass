//
//  InsetFactView.swift
//  Africa
//
//  Created by Gbolahan on 11/05/2023.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //    }
    }
    
    struct InsetFactView_Previews: PreviewProvider {
        static let animals: [Animal] = Bundle.main.decode("animals.json")
        
        static var previews: some View {
            InsetFactView(animal: animals[0])
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
