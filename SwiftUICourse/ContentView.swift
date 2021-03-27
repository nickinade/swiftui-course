//
//  ContentView.swift
//  SwiftUICourse
//
//  Created by Nikita Benin on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Variables
    @State var index: Int = 0
    static let staticColors: [Color] = [.red, .yellow, .green]
    @State var circleColors: [Color] = staticColors
    
    // MARK: - UI Elements
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                VStack(alignment: .center, spacing: 0, content: {
                    ColorCircle(color: circleColors[0])
                    ColorCircle(color: circleColors[1])
                    ColorCircle(color: circleColors[2])
                })
                Spacer(minLength: 200)
                Button(action: {
                    switchCircle()
                }, label: {
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.white, lineWidth: 4)
                        .background(RoundedRectangle(cornerRadius: 16).foregroundColor(.blue))
                        .overlay(
                            Text("NEXT")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                        )
                })
                .frame(width: 200 , height: 50, alignment: .center)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
    
    func switchCircle() {
        for colorIndex in 0..<circleColors.count {
            circleColors[colorIndex] = ContentView.staticColors[colorIndex].opacity(colorIndex == index ? 0.5 : 1)
        }
        
        if index == 2 {
            index = 0
        } else {
            index+=1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
