//
//  ColorView.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 30.03.2021.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(
                    Color(red: redValue/255, green: greenValue/255, blue: blueValue/255, opacity: 1)
                )
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                .frame(height: 130)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: .constant(2), greenValue: .constant(255), blueValue: .constant(100))
    }
}
