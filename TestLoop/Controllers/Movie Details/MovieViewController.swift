//
//  MovieViewController.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 8/9/2021.
//

import UIKit
import Hero

class MovieViewController: UIViewController {
    
    @IBOutlet weak var closeImgView: UIImageView!
    @IBOutlet weak var movieImgView: UIImageView!
    @IBOutlet weak var overlayView: UIView!
    @IBOutlet weak var movieTitleLbl: UILabel!
    @IBOutlet weak var rateView: UIStackView!
    @IBOutlet weak var rateValueLbl: UILabel!
    @IBOutlet weak var movieStoryLbl: UILabel!
    @IBOutlet weak var movieDescLbl: UILabel!
    @IBOutlet weak var commentView: GradientView!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var commentImg: UIImageView!
    @IBOutlet weak var trailerView: GradientView!
    @IBOutlet weak var trailerLbl: UILabel!
    @IBOutlet weak var trailerImg: UIImageView!
    @IBOutlet weak var trailerActivityIndicator: UIActivityIndicatorView!
    
    
    var heroImgID = ""
    var heroRateID = ""
    
    var selectedMovie : Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// MARK: - Setting Up Views
extension MovieViewController{
    fileprivate func setupUI() {
        movieImgView.hero.id = heroImgID
        rateView.hero.id = heroRateID
        
        displayItemsWithAnimation()
        
        commentView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
        commentView.layer.cornerRadius = 8
        trailerView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
        trailerView.layer.cornerRadius = 8
        
        populateView()
        
        setupItemsActions()
    }
    
    fileprivate func populateView() {
        if let selected = selectedMovie {
            self.movieImgView.image = UIImage.init(named: selected.moviePoster)
            self.movieTitleLbl.text = selected.movieName
            self.movieDescLbl.text = selected.movieDesc
            self.rateValueLbl.text  = "\(selected.movieRating)"
        }
    }
    
    fileprivate func setupItemsActions() {
        let tapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissVC))
        closeImgView.isUserInteractionEnabled = true
        closeImgView.addGestureRecognizer(tapGestureRecognizer)
        
        let tapGestureRecognizer1: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.loadingTrailerAnimation))
        trailerView.isUserInteractionEnabled = true
        trailerView.addGestureRecognizer(tapGestureRecognizer1)
        
        let tapGestureRecognizer2: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.showComments))
        commentView.isUserInteractionEnabled = true
        commentView.addGestureRecognizer(tapGestureRecognizer2)
    }
    
    func displayItemsWithAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [weak self] in
            guard let self = self else { return }
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                self.closeImgView.alpha = 1
                self.overlayView.alpha = 1
            })
        }
    }
}

// MARK: -  Items Actions
extension MovieViewController{
    @objc fileprivate func dismissVC(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc fileprivate func showComments(){
        self.commentImg.isHidden = true
        self.commentLbl.isHidden = true
        let commentsVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "CommentsViewController") as! CommentsViewController
        commentsVC.modalPresentationStyle = .fullScreen
        self.present(commentsVC, animated: true, completion: {
            self.commentImg.isHidden = false
            self.commentLbl.isHidden = false
        })
    }
    
    @objc fileprivate func loadingTrailerAnimation(){
        DispatchQueue.main.async {[weak self] in
            guard let self = self else { return }
            self.trailerActivityIndicator.isHidden = false
            self.trailerActivityIndicator.startAnimating()
            UIView.animate(withDuration: 0.5, animations: { () -> Void in
                self.trailerLbl.alpha = 0
                self.trailerImg.alpha = 0
                self.trailerActivityIndicator.alpha = 1
            }) { _ in
                UIView.animate(withDuration: 0.5, delay: 2, options: .curveEaseIn) {
                    self.trailerLbl.alpha = 1
                    self.trailerImg.alpha = 1
                    self.trailerActivityIndicator.alpha = 0
                } completion: { _ in
                    self.trailerActivityIndicator.isHidden = true
                    self.trailerActivityIndicator.stopAnimating()
                    self.trailerView.shake()
                }
                
            }
        }
    }
}
