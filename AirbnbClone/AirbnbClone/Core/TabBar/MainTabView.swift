//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Gbolahan on 22/01/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{
                   Label("Explore" , systemImage: "magnifyingglass")
                }
            WishlistsView()
                .tabItem{
                   Label("Wishlists" , systemImage: "heart")
                }
            ProfileView()
                .tabItem{
                   Label("Profile" , systemImage: "person")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
