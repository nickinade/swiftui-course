//
//  ColorSlider.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 30.03.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    var sliderColor: Color
    
    @State private var colorRange: ClosedRange<Double> = 0...255
    @State private var textFieldValue = ""
    @State private var alertPresented: Bool = false
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .foregroundColor(Color.white)
                .frame(width: 35)
            Slider(value: $sliderValue, in: colorRange, step: 1)
                .accentColor(sliderColor)
                .onChange(of: sliderValue, perform: { value in
                    setTextFieldText(value: value)
                })
            TextField("", text: $textFieldValue, onCommit: validateTextField)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 46)
        }
        .alert(isPresented: $alertPresented) {
            Alert(title: Text("Wrong format"), message: Text("Please enter value from 0 to 255"))
        }
        .onAppear(perform: {
            setTextFieldText(value: sliderValue)
        })
    }
}

extension ColorSlider {
    private func setTextFieldText(value: Double) {
        textFieldValue = "\(lround(value))"
    }
    
    private func validateTextField() {
        if let d = Double(textFieldValue), colorRange.contains(d) {
            sliderValue = d
        } else {
            setTextFieldText(value: sliderValue)
            alertPresented = true
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(150), sliderColor: .red)
    }
}
