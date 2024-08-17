//
//  MainScreenViewModel.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

final class MainScreenViewModel: ObservableObject {

    let columns = [
        GridItem(.flexible(), spacing: 5, alignment: .center),
        GridItem(.flexible(), spacing: DesignSystemConstants.size0x, alignment: .center)
    ]

    @Published var selected: Int = 1
    @Published var items: [ItemModel] = Mocks.items
    @Published var cart = [ItemModel]()
    @Published var isGridSelected: Bool = true

    func addToCart(item: ItemModel) {
        if !isItemInCart(item: item) {
            cart.append(item)
        }
    }

    func removeFromCart(item: ItemModel) {
        cart.removeAll { $0.id == item.id }
    }

    func isItemInCart(item: ItemModel) -> Bool {
        return cart.contains(where: { $0.id == item.id })
    }
}
