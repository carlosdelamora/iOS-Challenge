//
//  PreviewMoviesResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Foundation

struct PreviewMoviesResponse {
    
    static var response: MoviesResponse = {
        let moviePath = "https://image.tmdb.org/t/p/w300_and_h450_bestv2/xNcjlHPRNoqbpaYis0Y3zX4Hq0x.jpg"
        let title = "Life in a Year"
        var movies = [Movie]()
        for i in 0..<20 {
            let movie = Movie(
                id: UUID().uuidString,
                graphQLID: i,
                title: title,
                posterPath: moviePath
            )
            movies.append(movie)
        }
        return MoviesResponse(movies: movies)
    }()
}
