//
//  MovieDetailView.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/28/22.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                MovieCard(path: movie.posterPath)
                BodyLargeBold(movie.title)
                    .frame(maxWidth: .infinity)
                    .padding()
                VStack(alignment: .leading) {
                    BodyMediumSemibold("Release Year: \(movie.releaseDate)")
                    BodyMediumSemibold("Vote average: \(movie.voteAverage)")
                        .padding(.bottom, 10)
                    BodyMediumSemibold(movie.overview)
                }
            }
        }
        .background(Color.background)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: PreviewMovie.movie)
    }
}
