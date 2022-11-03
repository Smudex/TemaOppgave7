//
//  ContentView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel = ShoppingCartViewModel()
    
    var body: some View {
        VStack {
            Text("Shopping Cart")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.primary)
                .padding()
            
            Divider()
            ListView()
                .padding()
            
            //TODO her skal jeg legge in selve total prisen og varer som er lagt til i "kurven"
            // HER VILLE JEG LAGT INN TOTAL BELØPET, men det rakk jeg ikke.
            
        }
    }
}

struct ListView: View {
    @ObservedObject var viewModel = ShoppingCartViewModel()
    
    var body: some View {
        ScrollView {
            ForEach ($viewModel.productData, id: \.self.id) { $item in
                FoodView(foodProduct: item)
                    .padding(.bottom)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

struct Linje: View {
    var body: some View {
        Path { pathTrigle in
            //let hight = 40
            //let wight = 50
            pathTrigle.addLines([CGPoint(x: 0, y: 0),
                                 CGPoint(x: 1000, y: 0),
                                 CGPoint(x: 1000, y: 1),
                                 CGPoint(x: 0, y: 1)])
        }
        .foregroundColor(Color.gray)
    }
}










/*
 if let data = viewModel.productData?.items {
 List (data){
 i in
 FoodView (foodProduct: i)
 }
 
 
 }
 */
