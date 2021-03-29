//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 25.03.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    // MARK: - Variables
    @State private var buttonTitle: String = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLightState = lightIsOn
            greenLightState = lightIsOff
        case .yellow:
            currentLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
        }
    }
}

extension ContentView {
    
    // MARK: - UI Elements
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 20, content: {
                    ColorLight(color: .red, opacity: redLightState)
                    ColorLight(color: .yellow, opacity: yellowLightState)
                    ColorLight(color: .green, opacity: greenLightState)
                })
                
                Spacer()
                
                ColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
