//
//  AvatarView.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/28/22.
//

import SwiftUI

struct AvatarView: View {
    
    //MARK: - API
    
    //MARK: - Constants
    
    let actor: Movie.Actor
    
    //MARK: - Variables
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            Group {
                if let path = actor.profilePath {
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
            .aspectRatio(2/3, contentMode: .fit)
            .frame(width: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.white, lineWidth: 2)
            }
            BodyMediumSemibold(actor.name)
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        let actor = Movie.Actor(name: "Bruce Willis", profilePath: "https://image.tmdb.org/t/p/w300_and_h450_bestv2/dIK5wftjG8XZaCv5xyojB2Gd8dg.jpg", order: 1)
        return AvatarView(actor: actor).background(Color.background)
    }
}
