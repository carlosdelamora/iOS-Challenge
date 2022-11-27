//
//  MoviesContainer.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct MoviesContainer: View {
    var moviesResponse: MoviesResponse
    var topMoviesResponse: TopMovieResponse
    var collectionsHeight: CGFloat = 280
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                BodyLargeBold("Top Movies")
                TopMoviesCollection(topMoviesResponse: topMoviesResponse)
                    .frame(height: collectionsHeight)
                BodyLargeBold("Generes")
                GeneresCollection(generes: generes)
                    .frame(height: collectionsHeight)
                BodyLargeBold("Browse All")
                MoviesCollection(moviesResponse: moviesResponse)
                    .frame(height: collectionsHeight)
            }
        }
        .background(Color.black)
    }
    
    private let generes =  [
        "Browse All",
        "Comedy",
        "Science Fiction",
        "Fantasy",
        "Adventure",
        "Family"
    ]
}

struct MoviesContainer_Previews: PreviewProvider {
    static var previews: some View {
        MoviesContainer(moviesResponse: PreviewMoviesResponse.response, topMoviesResponse: PreviewTopMoviesResponse.response)
    }
}
