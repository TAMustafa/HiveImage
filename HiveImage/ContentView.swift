//
//  ContentView.swift
//  HiveImage
//
//  Created by Tarek Adam Mustafa on 05/04/2020.
//  Copyright © 2020 Tarek Adam Mustafa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue: Double = 0.6
    
    var redValue = Double.random(in: 0...0.8)
    var greenValue = Double.random(in: 0...0.8)
    var blueValue = Double.random(in: 0...0.8)
    var randomValue = Double.random(in: 0...0.5)
    
    var body: some View {
        ZStack {
            Color(
                red: redValue * sliderValue,
                green: greenValue * sliderValue,
                blue: blueValue * sliderValue,
                opacity: 0.3)
            VStack {
                Image("Hive")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
                    .foregroundColor(Color(
                        red: redValue * (sliderValue + randomValue),
                        green: greenValue * (sliderValue + randomValue),
                        blue: blueValue * (sliderValue + randomValue),
                        opacity: 0.8))
                
                VStack(alignment: .center) {
                    Slider(value: $sliderValue, in: 0.2...1, step: 0.01)
                    Text("red: \(255 * (redValue * (sliderValue + randomValue)), specifier: "%.0f")")
                    Text("green: \(255 * (greenValue * (sliderValue + randomValue)), specifier: "%.0f")")
                    Text("blue: \(255 * (blueValue * (sliderValue + randomValue)), specifier: "%.0f")")
                }
                .padding()
                .font(.system(size: 20, weight: .bold, design: .monospaced))
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
