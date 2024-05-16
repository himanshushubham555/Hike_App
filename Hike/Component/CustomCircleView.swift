//
//  CustomCircleView.swift
//  Hike
//
//  Created by Himanshu.61086168 on 30/04/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:[
                            .customIndigiMedium,
                            .colorSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading: .bottomLeading,
                        endPoint:isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
