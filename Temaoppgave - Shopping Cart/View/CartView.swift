//
//  ContentView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

import SwiftUI

struct CartView: View {
    
    //let product: ShoppingCartViewModel
    
    @StateObject var viewModel = ShoppingCartViewModel()
    
    
    var body: some View {
        GeometryReader { proxyCartView in
            
            VStack {
                Text("Shopping Cart")
                    .bold()
                    .font(.largeTitle)
                    .position(x: 180, y: 10)
                    .foregroundColor(.primary)
                
                Linje()
                
                ListView()
                
                //TODO her skal jeg legge in selve total prisen og varer som er lagt til i "kurven"
                Text("TOTAL PRIS: 20 Kr")
                    .position(x: 110, y: 15)
                    .background(.yellow)
                    .frame(width: 320, height: 30)
                
            }
            .padding()
            
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
    
    @StateObject var viewModel = ShoppingCartViewModel()
    
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem()]) {
                //ForEach (0..<9) { item in
                ForEach (viewModel.productData, id: \.id) { item in
                    
                    FoodView(item: item)
                    
                }
            }
        }
        .onAppear() {
            Task {
                do {
                    print("hello, cart view")
                    await viewModel.fetchItem()
                }
            }
        }
        .frame(height: 650, alignment: .center)
        
        
    }
}



