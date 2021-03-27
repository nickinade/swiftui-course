//
//  SwiftUIView.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 25.03.2021.
//

import SwiftUI

struct ColorCircle: View {
    
    // MARK: - Variables
    let color: Color
    
    // MARK: - UI Elements
    var body: some View {
        ZStack {
            Color(.black)
            Circle()
                .foregroundColor(color)
                .frame(width: 70, height: 70)
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 6)
                )
        }
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .green)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
