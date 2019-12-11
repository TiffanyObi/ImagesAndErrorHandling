//
//  ComicViewApiClent.swift
//  ImagesAndErrorHandling
//
//  Created by Tiffany Obi on 12/10/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import Foundation

struct ComicApiClent {
    
    static func getComic(number:Int, completion: @escaping (Result<Comic,AppError>) ->()) {
        
        let comicURL = "https://xkcd.com/\(number)/info.0.json"
        
       
        
        guard let url = URL(string: comicURL) else {
            completion(.failure(.badURL(comicURL)))
            return
        }
        
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
               
                do {
                    
        let comic = try JSONDecoder().decode(Comic.self, from: data)
                    
                    completion(.success(comic))
                } catch {
                    
                    completion(.failure(.decodingError(error)))
                }
                
            }
        }
        
    }
}
