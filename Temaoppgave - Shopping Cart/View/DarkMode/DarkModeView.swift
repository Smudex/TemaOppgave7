//
//  DarkModeView.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 23/10/2022.
//

import SwiftUI

struct DarkModeView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("Primary Color")
                        .foregroundColor(.primary)
                    Text("Secoundary Color")
                        .foregroundColor(.secondary)
                    Text("Color: Black")
                        .foregroundColor(.black)
                    Text("Color: White")
                        .foregroundColor(.white)
                }
            }
            .navigationTitle("Dark Mode")
            
        }
    }
}

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeView()
    }
}
