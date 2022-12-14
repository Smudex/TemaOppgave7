//
//  DataService.swift
//  Temaoppgave - Shopping Cart
//
//  Created by Sander Hafstad on 17/10/2022.
//

import Foundation

enum NetworkError: Error {
    case misformatUrl
    case dataLoadFailed
}

struct DataService {
    
    private static let host = "https://api.npoint.io/d4e0a014b1cfc5254bcb"
    
    private func getRequest(_ urlData: String) async throws -> [Item]  {
        if let url = URL(string: urlData) {
            let (data, _) = try await URLSession.shared.data(from: url)
            let shoppingCartData = try JSONDecoder().decode(Main.self, from: data)
            
            //print(shoppingCartData)
            return shoppingCartData.items
            
        }
        throw NetworkError.dataLoadFailed
    }
    
    func fetchData() async throws -> [Item] {
        let url = DataService.host
        return try await getRequest(url)
    }
}
