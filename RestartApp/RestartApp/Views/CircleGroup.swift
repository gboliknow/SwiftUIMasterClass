//
//  CircleGroup.swift
//  RestartApp
//
//  Created by Gbolahan on 30/03/2023.
//

import SwiftUI

struct CircleGroup: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260,alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260,height: 260,alignment: .center)
        }
    }
}

struct CircleGroup_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroup(ShapeColor: .red, ShapeOpacity: 0.2)
    }
}
