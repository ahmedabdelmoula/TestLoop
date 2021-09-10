//
//  Movie.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 10/9/2021.
//

import Foundation

struct Movie {
    let movieName: String
    let movieDesc: String
    let movieRating: Double
    let moviePoster: String
    
    init(movieName: String, movieDesc: String, movieRating: Double, moviePoster: String) {
        self.movieName = movieName
        self.movieDesc = movieDesc
        self.movieRating = movieRating
        self.moviePoster = moviePoster
    }
}
