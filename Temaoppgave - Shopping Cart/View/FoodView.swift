//
//  FoodView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 20/10/2022.
//

import SwiftUI

struct FoodView: View {
    
    @StateObject private var viewModel = ShoppingCartViewModel()
    
    @State private var quantity: Int = 0
    
    // let item: ProductItem
    
    var foodProduct: Item
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack {
                HStack{
                    AsyncImage(url: URL(string: foodProduct.product.images.first?.thumbnail.url ?? "https://google.com/favicon.ico")){ image in
                        image.image?.resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 50, height: 50)
                    
                    
                    VStack{
                        Text(foodProduct.product.name)
                            .foregroundColor(.primary)
                        /*
                         Text(ProductItem.init(id: UUID, name: "hei", images: <#T##[ItemImage]#>, name_extra: String, gross_price: String, availability: Availability, gross_unit_price: String, unit_price_quantity_abbreviation: String))
                         .foregroundColor(.black)
                         */
                        HStack{
                            Text(foodProduct.product.nameExtra)
                                .foregroundColor(.primary)
                        }
                    }
                    Spacer()
                    VStack{
                        Text(foodProduct.product.grossPrice)
                        
                            .foregroundColor(.primary)
                        
                        Text(foodProduct.product.grossUnitPrice)
                            .foregroundColor(.primary)
                    }
                    
                    
                    Image(systemName: "minus.circle")
                        .foregroundColor(.primary)
                        .font(.title)
                        .onTapGesture {
                            if quantity > 0 {
                                quantity -= 1
                            }
                        }
                    
                    Text("\(quantity)")
                        .font(.caption)
                    
                    Image(systemName: "plus.circle")
                        .foregroundColor(.primary)
                        .font(.title)
                        .onTapGesture {
                            if quantity <= 99 {
                                quantity += 1
                            }
                        }
                    
                }
                
                
                
                .frame(width: proxy.size.width, height: 50)
                .cornerRadius(10)
                Divider()
            }
            /*
             Path { pathLine in
             //let hight = 40
             //let wight = 50
             pathLine.addLines([CGPoint(x: 0, y: 0),
             CGPoint(x: 1000, y: 0),
             CGPoint(x: 1000, y: 1),
             CGPoint(x: 0, y: 1)])
             
             
             
             }
             .position(x: 0, y: 80)
             .foregroundColor(Color.gray)
             */
        }
        .frame(height: 50)
        
    }
    
}
/*
 struct FoodView_Previews: PreviewProvider {
 static var previews: some View {
 FoodView()
 }
 }
 */
