//
//  Meal.swift
//  MenuMVCExample
//
//  Created by Артем Репин on 06.09.2021.
//

struct Meal {
    let name: String
    let description: String
    let image: String
    let rating: Int
    let price: String
    
    var ratingBar: String {
        String(repeating: "⭐️", count: rating)
    }
}

extension Meal {
    static func getMeal() -> Meal {
        Meal(
            name: "Суп фасолевый",
            description: "Очень вкусный суп! Бери! Не пожалеешь!",
            image: "Fist",
            rating: 7,
            price: "130.00 рублей / 250 гр."
        )
    }
}
