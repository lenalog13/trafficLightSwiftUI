//
//  ColorCircleView.swift
//  trafficLightSwiftUI
//
//  Created by Елена Логинова on 04.04.2023.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
           
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .green)
    }
}
