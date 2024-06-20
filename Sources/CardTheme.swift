//
//  File.swift
//  
//
//  Created by Softsuave on 20/06/2024.
//

import Foundation
import SwiftUI

public struct CardTheme {
    public var backgroundColor: Color
    public var cornerRadius: CGFloat
    public var shadowRadius: CGFloat

    public static let defaultTheme = CardTheme(
        backgroundColor: .white,
        cornerRadius: 10,
        shadowRadius: 5
    )

    public static let darkTheme = CardTheme(
        backgroundColor: .black,
        cornerRadius: 15,
        shadowRadius: 10
    )
}
