//
//  File 2.swift
//  
//
//  Created by Softsuave on 20/06/2024.
//

import Foundation
import SwiftUI

public struct AnimatedCardView<Content: View>: View {
    private var content: Content
    private var cornerRadius: CGFloat
    private var shadowRadius: CGFloat
    private var backgroundColor: Color

    @State private var scale: CGFloat = 1.0

    public init(
        cornerRadius: CGFloat = 10,
        shadowRadius: CGFloat = 5,
        backgroundColor: Color = .white,
        @ViewBuilder content: () -> Content
    ) {
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadowRadius
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    public var body: some View {
        content
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .shadow(radius: shadowRadius)
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.scale = self.scale == 1.0 ? 1.1 : 1.0
                }
            }
    }
}
