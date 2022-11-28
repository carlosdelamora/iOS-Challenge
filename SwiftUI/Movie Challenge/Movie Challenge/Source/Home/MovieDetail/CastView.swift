//
//  CastView.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/28/22.
//

import SwiftUI

struct CastView: View {
    var actors: [Movie.Actor]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(actors, id: \.order) { movieActor in
                    AvatarView(actor: movieActor)
                }
            }
        }
    }
}

struct CastView_Previews: PreviewProvider {
    static var actors: [Movie.Actor] = {
        var actors = [Movie.Actor]()
        for i in 0..<7 {
            var actor = Movie.Actor(
                name: "Bruce Willis",
                profilePath: "https://image.tmdb.org/t/p/w300_and_h450_bestv2/dIK5wftjG8XZaCv5xyojB2Gd8dg.jpg",
                order: i
            )
            actors.append(actor)
        }
        return actors
    }()
    
    static var previews: some View {
        CastView(actors: actors)
    }
}
