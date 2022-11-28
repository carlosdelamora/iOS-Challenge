//
//  PreviewGenresResponse.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation

struct PreviewGenresResponse {
    static var response: GenresResponse {
        let genres = [
            "Browse All",
            "Thriller",
            "Action",
            "Science Fiction",
            "Fantasy",
            "Adventure",
            "Family",
            "Animation",
            "Comedy"
        ]
        return GenresResponse(
            genres: genres)
    }
}
