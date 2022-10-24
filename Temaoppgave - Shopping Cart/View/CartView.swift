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
        GeometryReader { proxyCartView in
            
            HStack {
                VStack {
                        Text("Shopping Cart")
                            .bold()
                            .font(.largeTitle)
                            .position(x: 190, y: 10)
                            .foregroundColor(.primary)
                            
                    Linje()
                        ListView()
                        //TODO her skal jeg legge in selve total prisen og varer som er lagt til i "kurven"
                    // HER VILLE JEG LAGT INN TOTAL BELØPET, men det rakk jeg ikke.
                    Text("TOTAL AMOUNT ")
                            .position(x: 165, y: 15)
                            .background(.yellow)
                            .frame(width: 320, height: 30)
                            
                        
                }
            }
        }
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
        .position(x: 0, y: 24)
        .foregroundColor(Color.gray)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}


struct ListView: View {
    
    @ObservedObject var viewModel = ShoppingCartViewModel()
    
    
    var body: some View {
                //ForEach (0..<9) { item in
        if let data = viewModel.productData?.items {
            List (data){
                i in
                FoodView (foodProduct: i)
            }
            .frame(width: 390, height: 680)
           
        }
            
        
    }
        
}
    



