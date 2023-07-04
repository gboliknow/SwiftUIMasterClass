//
//  FeaturedItemView.swift
//  SoccerApp
//
//  Created by Gbolahan on 04/07/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
    }
}
