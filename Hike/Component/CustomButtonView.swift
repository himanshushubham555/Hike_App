//
//  CustomButtonView.swift
//  Hike
//
//  Created by Himanshu.61086168 on 15/03/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
            
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 40))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
