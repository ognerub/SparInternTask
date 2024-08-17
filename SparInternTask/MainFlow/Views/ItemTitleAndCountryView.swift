//
//  ItemTitleAndCountryView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemTitleAndCountryView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            Text(item.title)
                .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
                .frame(maxWidth: .infinity, minHeight: DesignSystemConstants.size32x, alignment: .leading)
                .lineLimit(2)
                .padding(DesignSystemConstants.size8x)
                .foregroundColor(Color(uiColor: UIColor(.textPrimary).withAlphaComponent(0.8)))
            Text(item.country)
                .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
                .foregroundColor(Color(uiColor: UIColor(.textPrimary).withAlphaComponent(0.6)))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, DesignSystemConstants.size8x)
        }
    }
}

#Preview {
    ItemTitleAndCountryView(viewModel: MainScreenViewModel(), item: Mocks.items[0])
}
