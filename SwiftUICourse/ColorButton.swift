//
//  ColorButton.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 28.03.2021.
//

import SwiftUI

struct ColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(Color.white, lineWidth: 4)
                .background(RoundedRectangle(cornerRadius: 16).foregroundColor(.blue))
                .overlay(
                    Text(title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                )
                .frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(title: "NEXT", action: {})
    }
}
