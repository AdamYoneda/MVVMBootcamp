//
//  MainViewModel.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/12.
//

// MainViewControllerに関連するViewModel

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        return 1 // 仮
    }
    
    func numberOfRows(in section: Int) -> Int {
        return 10 // 仮
    }
    
    func getData() {
        APICaller.getTrendingMovies { result in
            switch result {
            case .success(let data):
                // テスト用コード
                print("\(#function) -- Top Trending Counts: \(data.results.count)")
            case .failure(let error):
                // テスト用コード
                print("Error at MainViewModel \(#function)", error)
            }
        }
    }
}
