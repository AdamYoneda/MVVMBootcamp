//
//  MovieTableCellViewModel.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/28.
//

import Foundation

class MovieTableCellViewModel {
    // 表示するためのデータのパラメータ:
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? "Unknown"
        self.rating = "\(movie.voteAverage)/10"
        self.date = movie.releaseDate ?? movie.firstAirDate ?? "Unknown"
        self.imageUrl = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        return URL(string: NetworkConstant.shared.imageServerAdress + imageCode)
    }
}
