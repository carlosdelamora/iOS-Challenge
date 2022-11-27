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
        Button {
            print("Top Movie \(topMovie.title) tapped")
        } label: {
            ZStack(alignment: .bottomLeading) {
                MovieCard(path: topMovie.posterPath)
                rankingImage
                    .offset(x: -padding)
            }
        }
        .scaleEffectButtonStyle()
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
        let moviePath = "https://image.tmdb.org/t/p/w300_and_h450_bestv2/xNcjlHPRNoqbpaYis0Y3zX4Hq0x.jpg"
        let title = "Life in a Year"
        return TopMovie(
            id: UUID().uuidString,
            graphQLID: 2145,
            title: title,
            posterPath: moviePath,
            voteAverage: String(7.8),
            position: 11
        )
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
