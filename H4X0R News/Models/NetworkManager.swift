//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Tiger Mei on 02.11.2020.
//  Copyright © 2020 Tiger Mei. All rights reserved.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search_by_date?query=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                }
            }
            task.resume()
        }
    }
}