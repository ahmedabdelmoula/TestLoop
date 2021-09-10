//
//  TopMovies.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 10/9/2021.
//

import Foundation


enum TopMoviesID {
    case action
    case comedy
}

struct TopMovies {
    let topMoviesId: TopMoviesID
    let topMoviesTitle: String
    let topMoviesImg: String
    
    init(topMoviesId: TopMoviesID, topMoviesTitle: String, topMoviesImg: String) {
        self.topMoviesId = topMoviesId
        self.topMoviesTitle = topMoviesTitle
        self.topMoviesImg = topMoviesImg
    }
}
