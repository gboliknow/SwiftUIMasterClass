//
//  CategoryGridView.swift
//  SoccerApp
//
//  Created by Gbolahan on 05/07/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
//        ScrollView(.horizontal , showsIndicators:  false , content: {
//            LazyHGrid(rows: gridLayout, alignment: .center, spacing:columnSpacing ,pinnedViews: [], content: {
//                Section(
//                    header : SectionView(rotateClockwise: false),
//                    footer:SectionView(rotateClockwise: true)
//                ){
//                    ForEach(categories, content: {
//                        category in
//                        CategoryItemView(category: category)
//                    })
//
//                }
//            })
//            .frame(height: 140)
//            .padding(.horizontal , 15)
//        .padding(.vertical , 10)
//        })
        ScrollView(.horizontal, showsIndicators: false, content: {
          LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
            Section(
              header: SectionView(rotateClockwise: false),
              footer: SectionView(rotateClockwise: true)
            ) {
              ForEach(categories) { category in
                CategoryItemView(category: category)
              }
            }
          }) //: GRID
          .frame(height: 140)
          .padding(.horizontal, 15)
          .padding(.vertical, 10)
        }) //: SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
