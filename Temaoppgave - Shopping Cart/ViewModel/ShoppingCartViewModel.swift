//
//  ShoppingCartViewModel.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

import Foundation

/*
 1. lag func til get req fra VM
 2. det du får tilbake fra dataService i viewmodel setter du til userData. Men da må det være samme type.
 3. Pass på at noe i viewet dit følger med på {viewModel}.userData
 */

@MainActor
class ShoppingCartViewModel: ObservableObject {
    
    private var dataService = DataService()
    
    @Published var productData: [ProductItem] = []
    
    @Published var isLoading = false
    
    @Published var fetch: Main? = nil
    
    @Published var quantity = 1
    
    
    @MainActor @Published var triggerOrd: String = "" {
        didSet {
            fetchItem()
        }
    }
    
    @MainActor func fetchItem() {
        Task{
            do {
                productData = try await dataService.fetchData()
                print(productData)
            }
            catch {
                print(error)
            }
        }
    }
    
    func getProduct() {
        isLoading = true
    }
    
}



