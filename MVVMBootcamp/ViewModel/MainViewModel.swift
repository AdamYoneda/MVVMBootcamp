//
//  MainViewModel.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/12.
//

// MainViewControllerに関連するViewModel

import Foundation

class MainViewModel {
    
    /// defaultはロードしていないためfalseに設定
    var isLoading: Observable<Bool> = Observable(false)
    /// getData()で取得したデータ
    var dataSource: TrendingMovieModel?
    /// ViewControllerに反映させたいobservableなデータソース
    var cellDataSource: Observable<[Movie]> = Observable([])
    
    func numberOfSections() -> Int {
        return 1 // 仮
    }
    
    func numberOfRows(in section: Int) -> Int {
        return dataSource?.results.count ?? 0
    }
    
    func getData() {
        // loading時にはCallerからデータを取得しない
        if isLoading.value ?? true {
            return
        }
        isLoading.value = true // loading process START
        
        APICaller.getTrendingMovies { [weak self] result in
            // Callerからデータを取る(= データを取得したとき)はインディケータ等を非表示にしたいので、falseにする
            self?.isLoading.value = false // loading process END
            
            switch result {
            case .success(let data):
                print("\(#function) -- Top Trending Counts: \(data.results.count)") // テスト用コード
                self?.dataSource = data
                self?.mapCellData()
            case .failure(let error):
                print("Error at MainViewModel \(#function)", error) // テスト用コード
            }
        }
    }
    
    private func mapCellData() {
        cellDataSource.value = self.dataSource?.results ?? []
    }
    
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title ?? movie.name ?? "---NO TITLE---"
    }
}
