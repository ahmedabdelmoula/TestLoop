//
//  HomeViewModel.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 10/9/2021.
//

import Foundation


class HomeViewModel {
    
    let topMoviesArray : [TopMovies]!
    let trendMoviesArray : [Movie]!
    let tvShowsArray : [String]!

    // MARK: - View Model initializer
    init() {
        topMoviesArray = DummyData.topMoviesArray
        trendMoviesArray = DummyData.trendMoviesArray
        tvShowsArray = DummyData.tvShowsArray
    }

}
