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
        completionHandler: @escaping(_ result: Result<TrendingMovieModel, NetworkError>) -> Void) {
        
    }
}
