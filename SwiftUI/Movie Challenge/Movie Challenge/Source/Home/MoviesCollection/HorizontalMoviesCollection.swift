//
//  HorizontalMoviesCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct HorizontalMoviesCollection: View {
    
    var moviesResponse: MoviesResponse

    var body: some View {
        ScrollView([.horizontal], showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(moviesResponse.movies, id: \.id) { movie in
                    MovieCell(movie: movie)
                }
            }
            .padding(20)
        }
        .background(Color.background)
    }
}

struct MoviesCollection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalMoviesCollection(
            moviesResponse: PreviewMoviesResponse.response
        )
        .frame(height: 200)
    }
}
