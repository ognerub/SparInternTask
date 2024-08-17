//
//  InCartCounterView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct InCartCounterView: View {

    @ObservedObject var viewModel: MainScreenViewModel
    let item: ItemModel

    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            HStack(spacing: DesignSystemConstants.size0x) {
                Button(action: {
                    viewModel.removeFromCart(item: item)
                },
                       label: {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .frame(width: 36, height: 36)
                        .background(.basketBase)
                        .cornerRadius(DesignSystemConstants.size16x, corners: [.topLeft, .bottomLeft])
                })
                VStack(spacing: DesignSystemConstants.size0x) {
                    Text("0.1 кг")
                        .font(Font.system(size: DesignSystemConstants.size16x, weight: .bold))
                        .foregroundColor(.white)
                    Text("~5.92 ₽")
                        .font(Font.system(size: DesignSystemConstants.size12x, weight: .regular))
                        .foregroundColor(Color(uiColor: UIColor(.white).withAlphaComponent(0.8)))
                }
                .frame(maxWidth: .infinity, minHeight: 36, maxHeight: 36)
                .background(.basketBase)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .frame(width: 36, height: 36)
                    .background(.basketBase)
                    .cornerRadius(DesignSystemConstants.size16x, corners: [.topRight, .bottomRight])
            }
            .padding(DesignSystemConstants.size4x)
        }
    }
}


#Preview {
    InCartCounterView(viewModel: MainScreenViewModel(), item: Mocks.items[0])
}
