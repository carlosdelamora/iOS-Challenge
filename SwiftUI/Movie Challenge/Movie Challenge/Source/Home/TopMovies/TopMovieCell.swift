//
//  TopMovieCell.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct TopMovieCell: View {
    
    //MARK: - API
    
    //MARK: - Constants
    
    let topMovie: TopMovie
    let padding: CGFloat
    @EnvironmentObject private var viewModel: MoviesContainerViewModel
    
    //MARK: - Variables
    
    //MARK: - Body
    
    var body: some View {
        Button{
            viewModel.didSelect(movie: topMovie.movie)
        } label: {
            TopMovieCard(topMovie: topMovie, padding: padding)
        }
        .scaleEffectButtonStyle()
    }
}

struct TopMovieCell_Previews: PreviewProvider {
    static var topMovie1: TopMovie {
        return PreviewTopMoviesResponse.response.movies.first!
    }
    static var previews: some View {
        HStack {
            TopMovieCell(topMovie: topMovie1, padding: 20)
            TopMovieCell(topMovie: topMovie1, padding: 20)
        }
        .frame(height: 180)
        .padding()
    }
}
