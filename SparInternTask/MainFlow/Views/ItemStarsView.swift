//
//  ItemStarsView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemStarsView: View {

    let rating: Float
    let reviews: Int
    let isReviewsVisible: Bool

    var body: some View {
        HStack(spacing: DesignSystemConstants.size0x) {
            Image(.starIcon)
                .foregroundColor(.starIconBase)
                .frame(width: DesignSystemConstants.size12x, height: DesignSystemConstants.size12x)
                .padding(DesignSystemConstants.size2x)
            Text("\(rating, specifier: "%.1f")")
                .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
            if reviews > 0 && isReviewsVisible {
                Text(" | \(getReviewsString())")
                    .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
                    .foregroundColor(Color(uiColor: UIColor(.textPrimary).withAlphaComponent(0.6)))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        .padding(.horizontal, DesignSystemConstants.size4x)
    }

    private func getReviewsString() -> String {
        String.localizedStringWithFormat(NSLocalizedString("reviews",
                                                                     comment: ""), reviews)
    }
}

#Preview {
    ItemStarsView(rating: 4.2, reviews: 1, isReviewsVisible: true)
}
