//
//  MovieCard.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import SwiftUI

struct MovieCard: View {
    
    var path: String?
    var body: some View {
        Group {
            if let path = path {
                AsyncImage(url: URL(string: path)) { phase in
                    Group {
                        if let image = phase.image {
                            image
                                .resizable()
                        } else {
                            Color.gray
                        }
                    }
                }
            } else {
                Color.gray
            }
        }
        .aspectRatio(5/8, contentMode: .fit)
        .clipShape(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
        )
        
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            MovieCard(
                path:"https://image.tmdb.org/t/p/w300_and_h450_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"
            )
            
            MovieCard(path: nil)
        }
        .frame(height: 180)
       
    }
}
