//
//  TopMoviesCollection.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct TopMoviesCollection: View {
    
    var topMoviesResponse: TopMovieResponse
    
    var body: some View {
        ScrollView([.horizontal]) {
            LazyHStack(spacing: 20) {
                ForEach(topMoviesResponse.movies, id: \.id) { topMovie in
                    TopMovieCard(topMovie: topMovie, padding: 20)
                }
            }
            .padding(20)
        }
        .background(Color.black)
    }
}

struct TopMoviesCollection_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviesCollection(
            topMoviesResponse: PreviewTopMoviesResponse.response
        )
        .frame(height: 180)
    }
}
