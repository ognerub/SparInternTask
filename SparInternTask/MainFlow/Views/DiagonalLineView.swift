//
//  DiagonalLineView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct DiagonalLineView: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.textPrimary)
            .rotationEffect(.degrees(-45))
            .offset(.init(width: -1, height: -1))
    }
}

#Preview {
    DiagonalLineView()
}
