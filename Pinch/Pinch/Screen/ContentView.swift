//
//  ContentView.swift
//  Pinch
//
//  Created by Gbolahan on 03/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating : Bool = false
    @State private var imageScale : CGFloat = 1
    @State private var imageOffset : CGSize = CGSize(width: 0, height: 0)
    // MARK: - FUNCTION
    func resetImageState(){
        withAnimation(.spring()){
            imageScale = 1
            imageOffset = .zero
        }
    }
    var body: some View {
        NavigationView{
            ZStack{
                // MARK : - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow( color: .black.opacity(0.2),radius: 12,x: 2,y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                    .onTapGesture(count : 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()){
                                imageScale = 5
                            }
                        }else{
                        resetImageState()
                        }
                        
                    })
                    .gesture(
                      DragGesture()
                        .onChanged{
                            value in
                            withAnimation(.linear(duration: 1)){
                                imageOffset = value.translation
                            }
                        }
                        .onEnded{
                            _ in
                            if imageScale <= 1{
                              resetImageState()
                            }
                            
                        }
                    )
                
            }
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)){
                    isAnimating = true
                }
            })
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
