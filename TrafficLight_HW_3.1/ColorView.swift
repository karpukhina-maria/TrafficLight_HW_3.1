//
//  ColorView.swift
//  TrafficLight_HW_3.1
//
//  Created by Mary Jane on 27.10.2021.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .opacity(opacity)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .green, opacity: 0.3)
    }
}
