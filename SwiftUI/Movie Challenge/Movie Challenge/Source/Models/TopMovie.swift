//
//  TopMovie.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/23/22.
//

import Foundation

struct TopMovie {
    // id to conform with identifiable
    var id: String {
        return movie.id
    }
    // id coming from the backend. 
    var movie: Movie
    var position: Int
    
    init?(topMovieDTO: MoviesQuery.Data.Movie?, position: Int) {
        guard let topMovieDTO else { return nil }
        guard let movie = Movie(movieDTO: topMovieDTO) else { return nil }
        self.movie = movie
        self.position = position
    }
    
    // Convenience method to initalize a movie. Use this to mock data for example.
    init(movie: Movie, position: Int) {
        self.movie = movie
        self.position = position
    }
}
