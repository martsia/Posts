//
//  PostsViewModel.swift
//  Posts
//
//  Created by Marta Kalichynska on 06.10.2023.
//

import Foundation
import Alamofire

class PostsViewModel {
    static let sharedInstance = PostsViewModel()
    
    func fetchPosts() {
        let url = "https://raw.githubusercontent.com/anton-natife/jsons/master/api/main.json"
        
        AF.request(url, method: .get)
            .response { response in
                switch response.result {
                case .success(let data):
                    if let data = data {
                        if let jsonString = String(data: data, encoding: .utf8) {
                            print(jsonString)
                        }
                        do {
                            let jsonData = try JSONDecoder().decode([Posts].self, from: data)
                            print(jsonData)
                        } catch {
                            print(error.localizedDescription)
                        }
                    } else {
                        print("No data received")
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }
}

