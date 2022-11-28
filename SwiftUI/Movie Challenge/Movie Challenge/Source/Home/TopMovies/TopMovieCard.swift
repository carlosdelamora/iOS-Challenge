//
//  TopMovieCard.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct TopMovieCard: View {
    
    let topMovie: TopMovie
    let padding: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            MovieCard(path: topMovie.movie.posterPath)
            rankingImage
                .offset(x: -padding)
        }
    }
    
    @ViewBuilder
    var rankingImage: some View {
        if 0..<5 ~= topMovie.position {
            Image("Number\(topMovie.position + 1)")
        } else {
            EmptyView()
        }
    }
}

struct TopMovieCard_Previews: PreviewProvider {
    static var topMovie1: TopMovie {
        return TopMovie(movie: PreviewMovie.movie, position: 1)
    }
    static var previews: some View {
        HStack {
            TopMovieCard(topMovie: topMovie1, padding: 20)
            TopMovieCard(topMovie: topMovie1, padding: 20)
        }
        .frame(height: 180)
        .padding()
    }
}
