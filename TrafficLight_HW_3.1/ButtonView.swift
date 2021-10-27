//
//  ButtonView.swift
//  TrafficLight_HW_3.1
//
//  Created by Mary Jane on 27.10.2021.
//

import SwiftUI

struct ButtonView: View {
    
//    @State private var currentLight = Lights.yellow
    var body: some View {
        Button(action: { }) {
            Text("START")
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


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
