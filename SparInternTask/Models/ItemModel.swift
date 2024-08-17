//
//  ItemModel.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: UUID
    let title: String
    let rating: Float
    let discount: Int
    let isFavourite: Bool
    let image: String
    let isManyTypes: Bool
    let newPrice: Float
    let oldPrice: Float
    let priceUnits: [String]
    let topLabelStyle: String
    let country: String
    let reviews: Int
}

