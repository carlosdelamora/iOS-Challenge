//
//  PreviewMoviesResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Foundation

struct PreviewMoviesResponse {
    
    static var response: MoviesResponse = {
        var movies = [Movie]()
        for i in 0..<20 {
            var movie = PreviewMovie.movie
            movie.id = UUID().uuidString
            movies.append(movie)
        }
        return MoviesResponse(movies: movies)
    }()
}
