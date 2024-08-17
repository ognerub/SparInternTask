//
//  SwitchDisplayStyleButtonView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct SwitchDisplayStyleButtonView: View {

    @ObservedObject var viewModel: MainScreenViewModel

    var body: some View {
        Button(action: {
            viewModel.isGridSelected.toggle()
        }, label: {
            Image(viewModel.isGridSelected ? .gridButtonIcon : .listButtonIcon)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
    }
}

#Preview {
    SwitchDisplayStyleButtonView(viewModel: MainScreenViewModel())
}
