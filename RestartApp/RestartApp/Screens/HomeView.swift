//
//  HomeView.swift
//  RestartApp
//
//  Created by Gbolahan on 29/03/2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating : Bool = false
   
    var body: some View {
        ZStack {
           
            VStack (spacing : 20){
            Spacer()
                ZStack {
                    CircleGroup(ShapeColor: .gray, ShapeOpacity: 0.1)
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                    .padding()
                    .offset(y:isAnimating ? 35 : -35)
                    .animation(Animation.easeOut(duration: 4).repeatForever(), value: isAnimating)
                }
                Text("The Time that leads to mastery is dependent on the intensity of our focus.").font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action : {
                    withAnimation{
                        playSound(sound: "success", type: "m4a")
                        isOnboardingViewActive = true
                    }
                  
                    
                }){
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            }.onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                    isAnimating = true
                })
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
