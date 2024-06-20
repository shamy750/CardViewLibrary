//
//  File.swift
//  
//
//  Created by Softsuave on 20/06/2024.
//

import Foundation
import SwiftUI

public struct CardView<Content: View>: View {
    private var content: Content
    private var cornerRadius: CGFloat
    private var shadowRadius: CGFloat
    private var backgroundColor: Color

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
    }
}
