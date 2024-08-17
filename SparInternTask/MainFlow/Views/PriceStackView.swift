//
//  PriceStackView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct PriceStackView: View {

    let newPrice: Float
    let oldPrice: Float

    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            HStack(spacing: DesignSystemConstants.size0x) {
                Text("\(Int(newPrice))")
                    .font(Font.system(size: DesignSystemConstants.size20x, weight: .bold))
                    .foregroundColor(.textPrimary)
                HStack {
                    Text(getFractionalDigits(of: newPrice))
                        .font(Font.system(size: DesignSystemConstants.size16x, weight: .bold))
                        .foregroundColor(.textPrimary)
                }
                .frame(maxHeight: .infinity, alignment: .topLeading)
                ZStack {
                    Text("₽")
                        .font(Font.system(size: 9, weight: .bold))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .foregroundColor(.textPrimary)
                    Text("кг")
                        .font(Font.system(size: 9, weight: .bold))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .foregroundColor(.textPrimary)
                    DiagonalLineView()
                }
                .padding(DesignSystemConstants.size2x)
                .frame(width: DesignSystemConstants.size20x)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(oldPrice, specifier: "%.2f")")
                .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
                .foregroundColor(.textPrimary)
                .opacity(0.6)
                .strikethrough()
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxHeight: 36)
    }

    private func getFractionalDigits(of value: Float) -> String {
        let fractional = modf(value).1
        let roundedFractional = Int((fractional * 100).rounded())
        return String(format: "%02d", roundedFractional)
    }
}

#Preview {
    PriceStackView(newPrice: 9934.90, oldPrice: 9999.77)
}
