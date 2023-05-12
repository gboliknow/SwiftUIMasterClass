//
//  VideoListItem.swift
//  Africa
//
//  Created by Gbolahan on 12/05/2023.
//

import SwiftUI

struct VideoListItem: View {
    
    let video: Video

    var body: some View {
        HStack(spacing: 10) {
          ZStack {
            Image(video.thumbnail)
              .resizable()
              .scaledToFit()
              .frame(height: 80)
              .cornerRadius(9)
            
            Image(systemName: "play.circle")
              .resizable()
              .scaledToFit()
              .frame(height: 32)
              .shadow(radius: 4)
          } //: ZSTACK
          
          VStack(alignment: .leading, spacing: 10) {
            Text(video.name)
              .font(.title2)
              .fontWeight(.heavy)
              .foregroundColor(.accentColor)
            
            Text(video.headline)
              .font(.footnote)
              .multilineTextAlignment(.leading)
              .lineLimit(2)
          } //: VSTACK
        } //
        
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItem(video: videos[0])
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
