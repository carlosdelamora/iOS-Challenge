//
//  MovieCell.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct MovieCell: View {
    
    //MARK: - API
    
    //MARK: - Constants
    
    //MARK: - Variables
    
    var movie: Movie
    @EnvironmentObject private var viewModel: MoviesContainerViewModel
    
    //MARK: - Body
    
    var body: some View {
        Button {
            viewModel.didSelect(movie: movie)
        } label: {
            MovieCard(path: movie.posterPath)
        }
        .scaleEffectButtonStyle()
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var movie: Movie {
        return PreviewMovie.movie
    }
    static var previews: some View {
        MovieCell(movie: movie)
    }
}
