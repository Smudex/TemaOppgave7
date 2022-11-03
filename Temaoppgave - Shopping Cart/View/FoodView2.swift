//
//  FoodView2.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 29/10/2022.
//

import SwiftUI

struct FoodView2: View {
    
    let imageName: String
    let productName: String
    let nameExtra: String
    let grossPrice: String
    let grossUnitPrice: String
    
    @State private var quantity: Int = 0
    
    var body: some View {
        GeometryReader { proxy in
            
            VStack {
                HStack {
                    AsyncImage(url: URL(string: imageName)){ image in
                        image.image?.resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 50, height: 50)
                    VStack{
                        Text(productName)
                            .foregroundColor(.primary)
                        HStack{
                            Text(nameExtra)
                                .foregroundColor(.primary)
                        }
                    }
                    Spacer()
                    VStack{
                        Text(grossPrice)
                            .foregroundColor(.primary)
                        Text(grossUnitPrice)
                            .foregroundColor(.primary)
                    }
                    
                    if (quantity == 0){
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.orange)
                            .font(.largeTitle)
                            .onTapGesture {
                                if quantity <= 99 {
                                    quantity += 1
                                }
                            }
                    } else {
                    
                        Image(systemName: "minus.circle")
                            .foregroundColor(.primary)
                            .font(.largeTitle)
                            .onTapGesture {
                                if quantity > 0 {
                                    quantity -= 1
                                }
                            }
                        
                        Text("\(quantity)")
                            .font(.caption)
                        
                        Image(systemName: "plus.circle")
                            .foregroundColor(.primary)
                            .font(.largeTitle)
                            .onTapGesture {
                                if quantity <= 99 {
                                    quantity += 1
                                }
                            }
                    }
                }
                
            }
            .frame(width: proxy.size.width, height: 50)
            .cornerRadius(10)
            Divider()
        }
        .frame(height: 50)
        
    }
    
}

struct FoodView2_Previews: PreviewProvider {
    static var previews: some View {
        FoodView2(imageName: "https://google.com/favicon.ico",
                  productName: "Gresskar Butternut",
                  nameExtra: "Portugal/ Spania, 750 g",
                  grossPrice: "33.00",
                  grossUnitPrice: "44.00")
    }
}
