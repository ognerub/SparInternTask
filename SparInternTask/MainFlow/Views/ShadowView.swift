//
//  ShadowView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct ShadowView: View {
    var body: some View {
        Rectangle()
            .fill(.white)
            .cornerRadius(DesignSystemConstants.size16x)
            .shadow(color: Color(uiColor: UIColor(.shadowBase).withAlphaComponent(0.2)), radius: DesignSystemConstants.size8x)
    }
}

#Preview {
    ShadowView()
}
