//
//  MainScreen.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 16.08.2024.
//

import SwiftUI

struct MainScreen: View {

    @StateObject private var viewModel = MainScreenViewModel()

    var body: some View {
        SwitchDisplayStyleButtonView(viewModel: viewModel)
        Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 0.5)
            .foregroundColor(.dividerBase)
        if viewModel.isGridSelected {
            ScrollView {
                LazyVGrid(columns: viewModel.columns, spacing: DesignSystemConstants.size8x) {
                    ForEach(viewModel.items) { item in
                        ItemGridCardView(viewModel: viewModel, item: item)
                    }
                }
                .padding(16)
            }
        } else {
            List(viewModel.items) { item in
                ItemListCardView(viewModel: viewModel, item: item)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    MainScreen()
}
