//
//  TopLabelView.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import SwiftUI

struct TopLabelView: View {

    let label: String

    var body: some View {
        VStack(spacing: DesignSystemConstants.size0x) {
            Text(label)
                .foregroundColor(.white)
                .font(Font.system(size: DesignSystemConstants.size10x, weight: .regular))
                .padding(
                    EdgeInsets(
                        top: DesignSystemConstants.size2x,
                        leading: DesignSystemConstants.size12x,
                        bottom: DesignSystemConstants.size4x,
                        trailing: DesignSystemConstants.size6x
                    )
                )
                .background(getTopLabelBackgroundColorName(from: label))
                .cornerRadius(DesignSystemConstants.size16x, corners: [.topLeft])
                .cornerRadius(DesignSystemConstants.size6x, corners: [.topRight, .bottomRight])
                .opacity(label == "" ? 0 : 1)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }

    private func getTopLabelBackgroundColorName(from: String) -> Color {
        switch label {
        case "Новинки":
            return Color(uiColor: UIColor(.topLabelNew).withAlphaComponent(0.9))
        case "Цена по карте":
            return Color(uiColor: UIColor(.topLabelCardPrice).withAlphaComponent(0.9))
        case "Удар по ценам":
            return Color(uiColor: UIColor(.topLabelBase).withAlphaComponent(0.9))
        default:
            return Color(.white)
        }
    }
}

#Preview {
    TopLabelView(label: "Новинки")
}
