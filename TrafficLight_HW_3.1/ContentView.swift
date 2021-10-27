//
//  ContentView.swift
//  TrafficLight_HW_3.1
//
//  Created by Mary Jane on 27.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    enum Lights {
        case red
        case yellow
        case green
    }
    
    @State private var currentLight = Lights.green
    @State private var isFirstTime = true
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorView(color: .red, opacity: currentLight == .red && !isFirstTime ? lightIsOn : lightIsOff)
                ColorView(color: .yellow, opacity: currentLight == .yellow && !isFirstTime ? lightIsOn : lightIsOff)
                    .padding(.top)
                ColorView(color: .green, opacity: currentLight == .green && !isFirstTime ? lightIsOn : lightIsOff)
                    .padding(.top)
                Spacer()
                Button(action: { changeLigts() } ) {
                    Text(isFirstTime ? "START" : "NEXT")
                        .foregroundColor(Color.white)
                        .frame(width: 150.0, height: 40.0)
                        .background(.blue)
                        .buttonBorderShape(.roundedRectangle)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 2))
                }
            }
        }
    }
    
    private func changeLigts() {
        if isFirstTime {
            isFirstTime = false
        }
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
