//
//  TopMovie.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/23/22.
//

import Foundation

struct TopMovie {
    // id to conform with identifiable
    var id: String
    // id coming from the backend. 
    var graphQLID: Int 
    var title: String
    var posterPath: String?
    var voteAverage: String
    var position: Int
    
    init?(topMovieDTO: TopMoviesQuery.Data.Movie?, position: Int) {
        guard let topMovieDTO else { return nil }
        id = "\(topMovieDTO.id)"
        graphQLID = topMovieDTO.id
        title = topMovieDTO.title
        posterPath = topMovieDTO.posterPath
        voteAverage = String(round(topMovieDTO.voteAverage*10)/10)
        self.position = position
    }
    
    // Convenience method to initalize a movie. Use this to mock data for example.
    init(id: String, graphQLID: Int, title: String, posterPath: String? = nil, voteAverage: String, position: Int) {
        self.id = id
        self.graphQLID = graphQLID
        self.title = title
        self.posterPath = posterPath
        self.voteAverage = voteAverage
        self.position = position
    }
}
