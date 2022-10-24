//
//  FoodView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 20/10/2022.
//

import SwiftUI

struct FoodView: View {
    
    @StateObject private var viewModel = ShoppingCartViewModel()
    
    @State private var Quantity: Int = 0
    
    let item: ProductItem
    var body: some View {
        
        GeometryReader { proxy in
            VStack {
                HStack{
                    AsyncImage(url: URL(string: "https://google.com/favicon.ico"))
                    
                    VStack{
                        Text(item.name)
                            .foregroundColor(.primary)
                        /*
                        Text(ProductItem.init(id: UUID, name: "hei", images: <#T##[ItemImage]#>, name_extra: String, gross_price: String, availability: Availability, gross_unit_price: String, unit_price_quantity_abbreviation: String))
                            .foregroundColor(.black)
                         */
                        HStack{
                            Text("banan")
                                .foregroundColor(.primary)
                        }
                    }
                    Spacer()
                    VStack{
                        Text("noeeeeeeeeeeeerge")
                            
                            .foregroundColor(.primary)
                        
                        Text("KG")
                            .foregroundColor(.primary)
                    }
                    
                    Button {
                        if Quantity > 0 {
                            Quantity -= 1
                        }
                        
                    } label: {
                        Image(systemName: "minus.circle")
                            .foregroundColor(.primary)
                            .font(.title)
                    }
                    
                    
                    Text("\(Quantity)")
                        .font(.caption)
                    
                    Button {
                        if Quantity < 99 {
                            Quantity += 1
                        }
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundColor(.primary)
                            .font(.title)
                    }
                    
                    
                }
                
                
                .frame(width: proxy.size.width, height: 50)
                .cornerRadius(10)
            }
            Path { pathTrigle in
                //let hight = 40
                //let wight = 50
                pathTrigle.addLines([CGPoint(x: 0, y: 0),
                                     CGPoint(x: 110, y: 0),
                                     CGPoint(x: 1000, y: 1),
                                     CGPoint(x: 0, y: 1)])
                
                
                
            }
            .position(x: 0, y: 80)
            .foregroundColor(Color.gray)
            
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
