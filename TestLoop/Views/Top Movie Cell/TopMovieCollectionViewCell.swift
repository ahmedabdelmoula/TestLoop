//
//  TopMovieCollectionViewCell.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 9/9/2021.
//

import UIKit

class TopMovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var topMovieImageView: UIImageView!
    @IBOutlet weak var topMovieTitleLbl: UILabel!
    @IBOutlet weak var topMovieDescLbl: UILabel!
    @IBOutlet weak var rateView: UIStackView!
    @IBOutlet weak var topMovieRateLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
