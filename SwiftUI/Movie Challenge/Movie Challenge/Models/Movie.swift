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
    var posterPath: String?
    
    init?(movieDTO: MoviesQuery.Data.Movie?) {
        guard let movieDTO else { return nil }
        graphQLID = movieDTO.id
        self.id = "\(movieDTO.id)"
        self.title = movieDTO.title
        self.posterPath = movieDTO.posterPath
    }
    
    // Convenience method to initalize a movie. Use this to mock data for example.
    init(id: Int, title: String, posterPath: String) {
        graphQLID = id
        self.id = "\(id)"
        self.title = title
        self.posterPath = posterPath
    }
}
