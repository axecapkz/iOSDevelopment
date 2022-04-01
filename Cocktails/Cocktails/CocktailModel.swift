//
//  CocktailModel.swift
//  Cocktails
//
//  Created by Azamat Kenjebayev on 4/1/22.
//

import Foundation

struct Drinks: Codable {
    let drinks: [Cocktail]
}

struct Cocktail: Codable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
}
