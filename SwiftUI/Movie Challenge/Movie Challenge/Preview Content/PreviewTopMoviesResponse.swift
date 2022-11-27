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
            let movie = TopMovie(
                id: UUID().uuidString,
                graphQLID: i,
                title: title,
                posterPath: moviePath,
                voteAverage: String(Double(10) - Double(i)*0.3),
                position: i
            )
            movies.append(movie)
        }
        return TopMovieResponse(movies: movies)
    }
}
