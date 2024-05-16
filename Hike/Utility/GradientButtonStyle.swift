//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Himanshu.61086168 on 19/03/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
        configuration.isPressed ?
        // A: When User pressed the button
            
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom)
        :
            LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
            // B: When Button is not pressed
            )
        
            .cornerRadius(40)
    }
}
