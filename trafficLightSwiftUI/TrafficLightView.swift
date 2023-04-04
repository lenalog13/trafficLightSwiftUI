//
//  ContentView.swift
//  trafficLightSwiftUI
//
//  Created by Елена Логинова on 04.04.2023.
//

import SwiftUI

struct TrafficLightView: View {
    @State private var counter = 0

    
    var body: some View {
        VStack {
            ColorCircleView(color: .red).opacity(stateDefinition(1))
            ColorCircleView(color: .yellow).opacity(stateDefinition(2))
            ColorCircleView(color: .green).opacity(stateDefinition(3))
            Spacer()
            Button { buttonPress() } label: {
                if counter == 0 {
                    Text("Start")
                } else {
                    Text("Next")
                }
            }
            
        }
        .padding()
    }
    
    private func buttonPress() {
        if counter == 3 {
            counter = 1
        } else {
            counter += 1
        }
    }
    
    private func stateDefinition(_ sectionNumber: Int) -> Double {
        let lightOff = 0.3
        let lightOn = 1.0
        
        if sectionNumber == counter {
            return lightOn
        } else {
            return lightOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
