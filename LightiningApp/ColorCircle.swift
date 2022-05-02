//
//  ColorCircle.swift
//  LightiningApp
//
//  Created by Macbook on 01.05.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    var color: Color
    var opacityValue: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacityValue)
            .frame(width: 100, height: 100)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacityValue: 0.5)
    }
}
