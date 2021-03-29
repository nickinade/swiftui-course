//
//  ColorLight.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 25.03.2021.
//

import SwiftUI

struct ColorLight: View {
    
    // MARK: - Variables
    let color: Color
    let opacity: Double
    
    // MARK: - UI Elements
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 6)
            )
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .green, opacity: 1)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
