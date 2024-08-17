//
//  AddToCartView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct AddToCartButtonView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        Button(action: {
            viewModel.addToCart(item: item)
        },
               label: {
            Image(.basketIcon)
                .foregroundColor(.white)
                .frame(width: 48, height: 36)
                .background(.basketBase)
                .clipShape(.capsule)
        })
    }
}

#Preview {
    AddToCartButtonView(viewModel: MainScreenViewModel(), item: Mocks.items[0])
}
