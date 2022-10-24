//
//  OrangeButtonView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 21/10/2022.
//

import SwiftUI

struct OrangeButtonView: View {
    
    @StateObject private var viewModel = ShoppingCartViewModel()
    
    @State var Quantity: Int = 0
    
    var body: some View {
            
            GeometryReader { proxy in
                
                VStack {
                    HStack{
                        AsyncImage(url: URL(string: "https://google.com/favicon.ico"))
                        VStack{
                            
                            
                            Text("bananer")
                                .foregroundColor(.black)
                            HStack{
                                Text("price")
                            }
                        }
                        Spacer()
                        VStack{
                            Text("noeeee")
                                .foregroundColor(.black)
                            
                            Text("KG")
                        }

                        
                        Button {
                            if Quantity < 99 {
                                Quantity += 1
                            }
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.orange)
                                .font(.largeTitle)
                        }
                        
                        
                    }
                    
                    
                    .frame(width: proxy.size.width, height: 50)
                    .background(Color.white)
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
               // .position(x: 0, y: 80)
                .foregroundColor(Color.gray)
                
            }
            .frame(height: 50)
            
        }
        
    }


struct OrangeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeButtonView()
    }
}
