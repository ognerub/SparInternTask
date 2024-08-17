//
//  ItemImageView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ItemImageView: View {

    let imageName: String

    var body: some View {
        Image(uiImage: UIImage(named: imageName) ?? UIImage())
            .resizable()
            .scaledToFit()

    }
}

#Preview {
    ItemImageView(imageName: "ItemMockImage01")
}
