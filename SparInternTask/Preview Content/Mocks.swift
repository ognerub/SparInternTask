//
//  Mocks.swift
//  SparInternTask
//
//  Created by Alexander Ognerubov on 17.08.2024.
//

import Foundation

enum Mocks {
    static let items: [ItemModel] = [
        ItemModel(
            id: UUID(),
            title: "Салат овощной с крабовыми палочками",
            rating: 4.1,
            discount: 0,
            isFavourite: false,
            image: "ItemMockImage01",
            isManyTypes: false,
            newPrice: 99.90,
            oldPrice: 199.0,
            priceUnits: ["Шт"],
            topLabelStyle: "",
            country: "Бразилия 🇧🇷",
            reviews: 2
        ),
        ItemModel(
            id: UUID(),
            title: "Энергетический напиток",
            rating: 4.3,
            discount: 25,
            isFavourite: false,
            image: "ItemMockImage02",
            isManyTypes: false,
            newPrice: 95699.90,
            oldPrice: 99999.50,
            priceUnits: ["Шт", "Кг"],
            topLabelStyle: "Удар по ценам",
            country: "",
            reviews: 3
        ),
        ItemModel(
            id: UUID(),
            title: "Огурцы тепличные садовые",
            rating: 4.5,
            discount: 5,
            isFavourite: false,
            image: "ItemMockImage03",
            isManyTypes: false,
            newPrice: 367.90,
            oldPrice: 599.90,
            priceUnits: ["Кг"],
            topLabelStyle: "Новинки",
            country: "Франция 🇫🇷",
            reviews: 5
        ),
        ItemModel(
            id: UUID(),
            title: "Дорадо Охлажденная Непотрошенная 300-400г",
            rating: 3.5,
            discount: 50,
            isFavourite: true,
            image: "ItemMockImage04",
            isManyTypes: false,
            newPrice: 59.20,
            oldPrice: 60.90,
            priceUnits: ["Шт", "Кг"],
            topLabelStyle: "Цена по карте",
            country: "Испания 🇪🇸",
            reviews: 65
        ),
        ItemModel(
            id: UUID(),
            title: "Салат овощной с крабовыми палочками",
            rating: 4.1,
            discount: 0,
            isFavourite: false,
            image: "ItemMockImage05",
            isManyTypes: false,
            newPrice: 99.90,
            oldPrice: 199.0,
            priceUnits: ["Шт"],
            topLabelStyle: "",
            country: "Англия 🇬🇧",
            reviews: 54
        ),
        ItemModel(
            id: UUID(),
            title: "Энергетический напиток",
            rating: 4.3,
            discount: 25,
            isFavourite: false,
            image: "ItemMockImage06",
            isManyTypes: false,
            newPrice: 95699.90,
            oldPrice: 99999.50,
            priceUnits: ["Шт", "Кг"],
            topLabelStyle: "Удар по ценам",
            country: "Германия 🇩🇪",
            reviews: 30
        ),
        ItemModel(
            id: UUID(),
            title: "Огурцы тепличные садовые",
            rating: 4.5,
            discount: 5,
            isFavourite: false,
            image: "ItemMockImage07",
            isManyTypes: false,
            newPrice: 367.90,
            oldPrice: 599.90,
            priceUnits: ["Кг"],
            topLabelStyle: "Новинки",
            country: "Франция 🇫🇷",
            reviews: 20
        ),
        ItemModel(
            id: UUID(),
            title: "Дорадо Охлажденная Непотрошенная 300-400г",
            rating: 3.5,
            discount: 50,
            isFavourite: true,
            image: "ItemMockImage08",
            isManyTypes: false,
            newPrice: 59.20,
            oldPrice: 60.90,
            priceUnits: ["Шт", "Кг"],
            topLabelStyle: "Цена по карте",
            country: "",
            reviews: 1
        )
    ]
}
