//
//  NetworkManager.swift
//  Cocktails
//
//  Created by Azamat Kenjebayev on 4/1/22.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    
    let urlLink = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Non_Alcoholic"
    
    func fetchCocktails(completion: @escaping ([Cocktail]) -> Void) -> Void {
        
        guard let url = URL(string: urlLink) else { return }
        AF.request(url).responseDecodable(of: Drinks.self) { response in
            
            switch response.result {
            case .success(let drinks):
                completion(drinks.drinks)
                
            case .failure(let error):
                print("Something went wrong: \(error)")
            }
        }
    }
}
