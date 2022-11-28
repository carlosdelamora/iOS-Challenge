//
//  Movie.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/23/22.
//

import Foundation

struct Movie: Identifiable {
    // id to conform with identifiable
    var id: String
    // id coming from the backend. 
    let graphQLID: Int
    var title: String
    var genres: [String]
    var posterPath: String?
    var releaseDate: String
    var popularity: String
    var voteAverage: String
    var overview: String
    var director: String
    var cast: [Actor]
    
    struct Actor {
        var name: String
        var profilePath: String?
        var order: Int
    }
    
    init?(movieDTO: MoviesQuery.Data.Movie?) {
        guard let movieDTO else { return nil }
        graphQLID = movieDTO.id
        self.id = "\(movieDTO.id)"
        self.title = movieDTO.title
        self.genres = movieDTO.genres
        self.posterPath = movieDTO.posterPath
        self.posterPath = movieDTO.posterPath
        self.releaseDate = movieDTO.releaseDate
        self.popularity = String(movieDTO.popularity)
        self.voteAverage = String(movieDTO.voteAverage)
        self.overview = movieDTO.overview
        director = movieDTO.director.name
        var cast = [Actor]()
        for castDTO in movieDTO.cast {
            let actor = Actor(name: castDTO.name, profilePath: castDTO.profilePath, order: castDTO.order)
            cast.append(actor)
        }
        self.cast = cast
    }
    
    // Convenience method to initalize a movie. Use this to mock data for example.
    init(
        id: String,
        graphQLID: Int,
        title: String,
        genres: [String],
        posterPath: String?,
        releaseDate: String,
        popularity: String,
        voteAverage: String,
        overview: String,
        director: String,
        cast: [Movie.Actor]
    ) {
        self.id = id
        self.graphQLID = graphQLID
        self.title = title
        self.genres = genres
        self.posterPath = posterPath
        self.releaseDate = releaseDate
        self.popularity = popularity
        self.voteAverage = voteAverage
        self.overview = overview
        self.director = director
        self.cast = cast
    }
}
