//
//  PreviewMovie.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/27/22.
//

import Foundation

struct PreviewMovie {
    static var movie: Movie {
        let movie = Movie(
            id: "id",
            graphQLID: 20,
            title: "Wonder Woman 1984",
            genres: ["Action", "Romance"],
            posterPath:"https://image.tmdb.org/t/p/w300_and_h450_bestv2/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
            releaseDate: "2020",
            popularity: "2923",
            voteAverage: "7",
            overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s and finds a formidable foe by the name of the Cheetah.",
            director: "William Eubank",
            cast: cast
        )
        return movie
    }
    
    static var cast: [Movie.Actor] {
        let actor1 = Movie.Actor(
            name: "Gal Gadot",
            profilePath: "https://image.tmdb.org/t/p/w300_and_h450_bestv2/plLfB60M5cJrnog8KvAKhI4UJuk.jpg",
            order: 1
        )
        let actor2 = Movie.Actor(
            name: "Chris Pine",
            profilePath: "https://image.tmdb.org/t/p/w300_and_h450_bestv2/ipG3BMO8Ckv9xVeEY27lzq975Qm.jpg",
            order: 2
        )
        let actor3 = Movie.Actor(
            name: "Kristen Wiig",
            profilePath: "https://image.tmdb.org/t/p/w300_and_h450_bestv2/oddvykQHx71hEZlvKinCzB3Vcfh.jpg",
            order: 2
        )
        return [actor1, actor2, actor3]
    }
}
