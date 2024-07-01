//
//  DetailsMovieViewModel.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/30.
//

import Foundation


class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        
        self.movieID = movie.id
        self.movieTitle = movie.title ?? movie.name ?? "UNKNOWN"
        self.movieDescription = movie.overview ?? ""
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        let urlString = NetworkConstant.shared.imageServerAdress + imageCode
        return URL(string: urlString)
    }
}
