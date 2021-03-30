//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue: Double = Double.random(in: 0...255)
    @State private var greenValue: Double = Double.random(in: 0...255)
    @State private var blueValue: Double = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 45/255, green: 108/255, blue: 188/255, opacity: 1)
                .ignoresSafeArea()
            VStack(spacing: 45) {
                ColorView(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
                VStack {
                    ColorSlider(sliderValue: $redValue, sliderColor: .red)
                    ColorSlider(sliderValue: $greenValue, sliderColor: .green)
                    ColorSlider(sliderValue: $blueValue, sliderColor: .blue)
                }
                Spacer()
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
