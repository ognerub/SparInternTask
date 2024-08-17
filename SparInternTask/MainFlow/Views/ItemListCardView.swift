//
//  ItemListCardView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemListCardView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        HStack(spacing: DesignSystemConstants.size0x) {
            ZStack {
                ItemImageView(imageName: item.image)
                TopLabelView(label: item.topLabelStyle)
                ItemDiscountView(discount: item.discount)
            }
            .frame(maxWidth: 144, maxHeight: 144)
            .padding(DesignSystemConstants.size16x)
            ZStack {
                VStack(spacing: DesignSystemConstants.size0x) {
                    ItemStarsView(rating: item.rating, reviews: item.reviews, isReviewsVisible: true)
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
                OrdersAndFavouritesView()
            }
            .frame(maxHeight: 144)
        }
    }
}

#Preview {
    ItemListCardView(viewModel: MainScreenViewModel(), item: Mocks.items[2])
}
