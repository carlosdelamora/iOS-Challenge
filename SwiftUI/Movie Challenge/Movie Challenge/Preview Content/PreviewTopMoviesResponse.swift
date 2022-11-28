//
//  PreviewTopMoviesResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Foundation

struct PreviewTopMoviesResponse {
    
    static var response: TopMovieResponse {
        let moviePath = "https://image.tmdb.org/t/p/w300_and_h450_bestv2/xNcjlHPRNoqbpaYis0Y3zX4Hq0x.jpg"
        let title = "Life in a Year"
        var movies = [TopMovie]()
        for i in 0..<5 {
            var movie = PreviewMovie.movie
            movie.id = UUID().uuidString
            let topMovie = TopMovie(movie: movie, position: i)
            movies.append(topMovie)
        }
        return TopMovieResponse(movies: movies)
    }
}
