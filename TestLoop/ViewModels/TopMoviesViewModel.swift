//
//  TopMoviesViewModel.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 10/9/2021.
//

import Foundation

class TopMoviesViewModel {
    
    var moviesArray = [Movie]()
    
    // MARK: - View Model initializer
    func poppulateData(topMovieId : TopMoviesID) {
        switch topMovieId {
        case .action:
            moviesArray = DummyData.actionMoviesArray
            break
        default:
            moviesArray = DummyData.comedyMoviesArray
            break
        }
    }
}
