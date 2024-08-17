//
//  UnitsPickerView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct UnitsPickerView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            if item.priceUnits.count > 1 && viewModel.isItemInCart(item: item) {
                Picker(selection: $viewModel.selected, label: Text(""), content: {
                    Text(item.priceUnits[0]).tag(0)
                    Text(item.priceUnits[1]).tag(1)
                }).pickerStyle(.segmented)
            } else {
                Picker(selection: $viewModel.selected, label: Text(""), content: {
                    Text("").tag(0)
                    Text("").tag(1)
                }).pickerStyle(.segmented)
                    .opacity(0)
            }
        }
        .padding(.horizontal, 5)
    }
}

#Preview {
    UnitsPickerView(viewModel: MainScreenViewModel(), item: Mocks.items[4])
}
