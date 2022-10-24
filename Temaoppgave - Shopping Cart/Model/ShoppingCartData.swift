//
//  ShoppingCartData.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

// Data Struktur lages alltid først
//Hashable, Codable

import Foundation



struct Main: Decodable {
    let items: [ProductItem]
}

struct ProductItem: Identifiable, Decodable  {
    let id: Int
    let name: String
    let images: [ItemImage]
    let discount: ItemDiscount?
    let name_extra: String
    let gross_price: String
    let availability: Availability
    let gross_unit_price: String
    let unit_price_quantity_abbreviation: String
    
}

struct ItemImage: Decodable {
    let thumbnail: UrlImage
}

struct UrlImage: Decodable{
    let url: String
}

struct ItemDiscount: Decodable{
    let is_discounted: Bool
    let undiscounted_gross_price: String
    let description_short: String
}

struct Availability: Decodable {
    let is_available: Bool
}

