//
//  TopMoviesViewController.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 8/9/2021.
//

import UIKit

class TopMoviesViewController: UIViewController {
    
    @IBOutlet weak var closeImgView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    fileprivate let topMovieCellId = "TopMovieCollectionViewCell"
    fileprivate let headerId = "TVShowHeaderView"
    fileprivate let padding: CGFloat = 8
    
    fileprivate let movieImgHeroId = "movieImg"
    fileprivate let movieRateHeroId = "movieRate"
    
    private var topMoviesViewModel = TopMoviesViewModel()
    
    var selectedTopMovies : TopMovies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupCollectionView()
        setupCollectionViewLayout()
    }
    
}

// MARK: - Setting Up Views
extension TopMoviesViewController{
    fileprivate func setupUI() {
        if let selected = self.selectedTopMovies{
            self.topMoviesViewModel.poppulateData(topMovieId: selected.topMoviesId)
            self.collectionView.reloadData()
        }
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissVC))
        closeImgView.isUserInteractionEnabled = true
        closeImgView.addGestureRecognizer(singleTap)
    }
    
    @objc fileprivate func dismissVC(){
        self.dismiss(animated: true, completion: nil)
    }
    
    fileprivate func setupCollectionViewLayout() {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
        }
    }
    
    fileprivate func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.register(UINib(nibName: String(describing: TopMovieCollectionViewCell.self), bundle: .main), forCellWithReuseIdentifier: topMovieCellId)
        collectionView.register(UINib(nibName: String(describing: TopMoviesHeaderView.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
}

// MARK: - UICollectionView Data Source Methods
extension TopMoviesViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topMoviesViewModel.moviesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topMovieCellId, for: indexPath) as! TopMovieCollectionViewCell
        cell.topMovieImageView.image = UIImage(named: topMoviesViewModel.moviesArray[indexPath.item].moviePoster)
        cell.topMovieTitleLbl.text = topMoviesViewModel.moviesArray[indexPath.item].movieName
        cell.topMovieDescLbl.text = topMoviesViewModel.moviesArray[indexPath.item].movieDesc
        cell.topMovieRateLbl.text = "\(topMoviesViewModel.moviesArray[indexPath.item].movieRating)"
        cell.mainView.layer.cornerRadius = 8
        cell.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! TopMoviesHeaderView
        if let selected = self.selectedTopMovies{
            header.topMoviesImg.image = UIImage(named: selected.topMoviesImg)
            header.topMoviesLbl.text = selected.topMoviesTitle
        }
        return header
    }
}

// MARK: - UICollectionView Delegate Methods
extension TopMoviesViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TopMovieCollectionViewCell{
            let heroImgID = movieImgHeroId + "\(indexPath.item)"
            let heroRateID = movieRateHeroId + "\(indexPath.item)"
            cell.topMovieImageView.hero.id = heroImgID
            cell.rateView.hero.id = heroRateID
            let movieVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "MovieViewController") as! MovieViewController
            movieVC.modalPresentationStyle = .fullScreen
            movieVC.heroImgID = heroImgID
            movieVC.heroRateID = heroRateID
            movieVC.selectedMovie = self.topMoviesViewModel.moviesArray[indexPath.item]
            self.present(movieVC, animated: true, completion: nil)
        }
    }
}

// MARK: - UICollectionViewLayout Delegate Methods
extension TopMoviesViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: collectionView.frame.width, height: self.view.frame.height * 0.4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - padding * 2, height: collectionView.frame.width * 0.4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

// MARK: - UIScrollView Delegate Methods
extension TopMoviesViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let layout = collectionView.collectionViewLayout as? StretchyHeaderLayout else { return }
        let offsetY = scrollView.contentOffset.y
        layout.sectionHeadersPinToVisibleBounds = offsetY > 0
    }
}
