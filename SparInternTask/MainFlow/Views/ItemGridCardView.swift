//
//  ItemGridCardView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemGridCardView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        ZStack {
            ShadowView()
            VStack(spacing: DesignSystemConstants.size0x) {
                ZStack {
                    ItemImageView(imageName: item.image)
                    ItemStarsView(rating: item.rating, reviews: item.reviews, isReviewsVisible: false)
                    ItemDiscountView(discount: item.discount)
                    OrdersAndFavouritesView()
                    TopLabelView(label: item.topLabelStyle)
                }
                ItemTitleAndCountryView(viewModel: viewModel, item: item)
                UnitsPickerView(viewModel: viewModel, item: item)
                if viewModel.isItemInCart(item: item) {
                    InCartCounterView(viewModel: viewModel, item: item)
                } else {
                    VStack(spacing: DesignSystemConstants.size0x) {
                        HStack(spacing: DesignSystemConstants.size0x) {
                            PriceStackView(newPrice: item.newPrice, oldPrice: item.oldPrice)
                            AddToCartButtonView(viewModel: viewModel, item: item)
                        }
                    }.padding(DesignSystemConstants.size4x)
                }
            }
            .cornerRadius(DesignSystemConstants.size16x)
        }
    }
}

#Preview {
    ItemGridCardView(viewModel: MainScreenViewModel(), item: Mocks.items[3])
}
