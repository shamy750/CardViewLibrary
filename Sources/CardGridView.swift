//
//  File.swift
//  
//
//  Created by Softsuave on 20/06/2024.
//

import Foundation
import SwiftUI

public struct CardGridView<Content: View>: View {
    private var items: [Content]
    private var columns: Int
    private var spacing: CGFloat

    public init(items: [Content], columns: Int = 2, spacing: CGFloat = 10) {
        self.items = items
        self.columns = columns
        self.spacing = spacing
    }

    public var body: some View {
        let rows = items.chunked(into: columns)

        return VStack(alignment: .leading, spacing: spacing) {
            ForEach(rows.indices, id: \.self) { rowIndex in
                HStack(spacing: spacing) {
                    ForEach(rows[rowIndex].indices, id: \.self) { columnIndex in
                        rows[rowIndex][columnIndex]
                    }
                }
            }
        }
    }
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
