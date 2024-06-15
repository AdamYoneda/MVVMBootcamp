//
//  APICaller.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/14.
//

/*
 拡張性のあるnetworkingクラス
 
 */

import Foundation
import UIKit

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class APICaller {
    
    static func getTrendingMovies(
        completionHandler: @escaping(_ result: Result<TrendingMovieModel, NetworkError>)
        -> Void) {
            // 1. URLの作成
            let urlString = NetworkConstant.shared.serverAdress + "trending/all/day?api_key=" + NetworkConstant.shared.apiKey
            
            guard let url = URL(string: urlString) else {
                completionHandler(.failure(.urlError))
                return
            }
            
            // 2. URLからデータを取得
            URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
                // 各返り値のnilチェック
                if error == nil,
                   let data = dataResponse,
                   let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                    completionHandler(.success(resultData))
                } else {
                    completionHandler(.failure(.canNotParseData))
                }
                
            }.resume()
        }
}
