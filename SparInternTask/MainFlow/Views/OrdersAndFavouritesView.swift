//
//  OrdersAndFavouritesView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct OrdersAndFavouritesView: View {
    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            Image(.orderListIcon)
                .frame(width: DesignSystemConstants.size32x, height: DesignSystemConstants.size32x)
            Image(.favouritesIcon)
                .frame(width: DesignSystemConstants.size32x, height: DesignSystemConstants.size32x)
        }
        .background(Color(uiColor: UIColor(.white).withAlphaComponent(0.8)))
        .cornerRadius(DesignSystemConstants.size16x, corners: [.topRight, .bottomLeft])
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
    }
}

#Preview {
    OrdersAndFavouritesView()
}
