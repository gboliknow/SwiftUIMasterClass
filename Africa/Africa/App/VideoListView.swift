//
//  VideoListView.swift
//  Africa
//
//  Created by Gbolahan on 10/05/2023.
//

import SwiftUI

struct VideoListView: View {
    
   @State var videos : [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView{
            List{
                ForEach(videos){
                    item in
                    VideoListItem(video: item)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos" , displayMode : .inline)
            .toolbar {
              ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                  // Shuffle videos
                  videos.shuffle()
                  hapticImpact.impactOccurred()
                }) {
                  Image(systemName: "arrow.2.squarepath")
                }
              }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
