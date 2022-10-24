//
//  MainView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("Welcome!")
            .font(.largeTitle)
            .bold()
            .position(x: 195, y: 50)
    
        Button("ENTER CART") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            
        }
        .foregroundColor(.black)
        .font(.largeTitle)
        .bold()
        
        
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
