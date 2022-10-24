//
//  ShoppingCartData.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

// Data Struktur lages alltid først
//Hashable, Codable

import Foundation


struct Main: Codable  {
    let items: [Item]

    enum CodingKeys: String, CodingKey {
        case items
        
    }
}


struct Item: Codable {
    let product: Product
    let quantity: Int
    let availability: Availability
    let displayPriceTotal, discountedDisplayPriceTotal: String

    enum CodingKeys: String, CodingKey {
        case product, quantity, availability
        case displayPriceTotal = "display_price_total"
        case discountedDisplayPriceTotal = "discounted_display_price_total"
    }
}
extension Item: Identifiable {
    var id: Int {
        return product.id
    }
}

struct Availability: Codable {
    let code: Code
    let availabilityDescription: Description
    let isAvailable: Bool
    let descriptionShort: DescriptionShort

    enum CodingKeys: String, CodingKey {
        case code
        case availabilityDescription = "description"
        case isAvailable = "is_available"
        case descriptionShort = "description_short"
    }
}

enum Description: String, Codable {
    case empty = ""
    case utsolgtFraLeverandør = "Utsolgt fra leverandør"
}

enum Code: String, Codable {
    case available = "available"
    case soldOutSupplier = "sold_out_supplier"
}

enum DescriptionShort: String, Codable {
    case empty = ""
    case utsolgt = "Utsolgt"
}

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let brand: String?
    let images: [ImageObject]
    let brandID: Int?
    let discount: Discount?
    let frontURL: String
    let fullName: String
    let promotion: Promotion?
    let nameExtra, grossPrice: String
    let availability: Availability
    let grossUnitPrice: String
    let unitPriceQuantityName, unitPriceQuantityAbbreviation: String

    enum CodingKeys: String, CodingKey {
        case id, name, brand, images
        case brandID = "brand_id"
        case discount
        case frontURL = "front_url"
        case fullName = "full_name"
        case promotion
        case nameExtra = "name_extra"
        case grossPrice = "gross_price"
        case availability
        case grossUnitPrice = "gross_unit_price"
        case unitPriceQuantityName = "unit_price_quantity_name"
        case unitPriceQuantityAbbreviation = "unit_price_quantity_abbreviation"
    }
}


struct Discount: Codable {
    let isDiscounted: Bool
    let descriptionShort, undiscountedGrossPrice, undiscountedGrossUnitPrice: String

    enum CodingKeys: String, CodingKey {
        case isDiscounted = "is_discounted"
        case descriptionShort = "description_short"
        case undiscountedGrossPrice = "undiscounted_gross_price"
        case undiscountedGrossUnitPrice = "undiscounted_gross_unit_price"
    }
}


struct ImageObject: Codable {
    let large, thumbnail: Large
}


struct Large: Codable {
    let url: String
}

struct Promotion: Codable {
    let title, textColor, titleColor, backgroundColor: String
    let descriptionShort, accessibilityText: String

    enum CodingKeys: String, CodingKey {
        case title
        case textColor = "text_color"
        case titleColor = "title_color"
        case backgroundColor = "background_color"
        case descriptionShort = "description_short"
        case accessibilityText = "accessibility_text"
    }
}




/*
struct Main: Decodable {

    let items: [ProductItem]
    
    
    struct ProductItem: Identifiable, Decodable  {
        let id: Int
        let name: String
        let images: [ItemImage]
        let discount: ItemDiscount?
        let name_extra: String?
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
}
*/
