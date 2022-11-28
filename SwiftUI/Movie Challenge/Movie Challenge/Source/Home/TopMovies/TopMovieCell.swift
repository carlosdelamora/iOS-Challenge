//
//  TopMovieCell.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import SwiftUI

struct TopMovieCell: View {
    
    //MARK: - API
    
    init(topMovie: TopMovie, padding: CGFloat, action: @escaping () -> Void) {
        self.topMovie = topMovie
        self.padding = padding
        self.action = action
    }
    
    //MARK: - Constants
    
    private let topMovie: TopMovie
    private let padding: CGFloat
    private let action: () -> Void
    
    //MARK: - Variables
    
    //MARK: - Body
    
    var body: some View {
        Button(action: action) {
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
            TopMovieCell(topMovie: topMovie1, padding: 20){}
            TopMovieCell(topMovie: topMovie1, padding: 20){}
        }
        .frame(height: 180)
        .padding()
    }
}
