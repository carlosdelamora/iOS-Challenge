//
//  MoviesCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct MoviesCollection: View {
    
    var moviesResponse: MoviesResponse

    var body: some View {
        ScrollView([.horizontal]) {
            LazyHStack(spacing: 20) {
                ForEach(moviesResponse.movies, id: \.id) { movie in
                    if let path = movie.posterPath {
                        MovieCard(path: path)
                    } else {
                        EmptyView()
                    }
                }
            }
            .padding(20)
        }
        .background(Color.black)
    }
}

struct MoviesCollection_Previews: PreviewProvider {
    static var previews: some View {
        MoviesCollection(
            moviesResponse: PreviewMoviesResponse.response
        )
        .frame(height: 200)
    }
}
