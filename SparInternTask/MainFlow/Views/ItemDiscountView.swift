//
//  ItemDiscountView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemDiscountView: View {

    let discount: Int

    var body: some View {
        Text(discount > 0 ? "\(discount) %" : "")
            .font(Font.system(size: DesignSystemConstants.size16x, weight: .bold))
            .foregroundColor(.discountPrice)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .padding(.horizontal, 5)
    }
}

#Preview {
    ItemDiscountView(discount: 25)
}
