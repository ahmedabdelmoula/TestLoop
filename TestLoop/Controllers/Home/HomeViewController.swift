//
//  HomeViewController.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 8/9/2021.
//

import UIKit
import BouncyLayout
import Hero

class HomeViewController: UIViewController {
    
    @IBOutlet weak var topMoviesLbl: UILabel!
    @IBOutlet weak var topMoviesCollectionView: UICollectionView!
    @IBOutlet weak var topMoviesContainerView: UIView!
    @IBOutlet weak var trendMoviesLbl: UILabel!
    @IBOutlet weak var trendMoviesCollectionView: UICollectionView!
    @IBOutlet weak var tvShowsLbl: UILabel!
    @IBOutlet weak var tvShowsCollectionView: UICollectionView!
    
    fileprivate let topMovieCellId = "HomeTopMoviesCollectionViewCell"
    fileprivate let trendMovieCellId = "HomeMoviesCollectionViewCell"
    fileprivate let tvShowcellId = "HomeTVShowsCollectionViewCell"
    
    fileprivate let padding: CGFloat = 4
    
    fileprivate let movieImgHeroId = "movieHomeImg"
    fileprivate let topMoviesCollectionViewHeroId = "topMovie"
    
    private let homeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupCollectionViews()
        setupCollectionViewsLayout()
    }
    
}

// MARK: - Setting Up Views
extension HomeViewController{
    fileprivate func setupUI() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.topMoviesContainerView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
            self.topMoviesContainerView.layer.cornerRadius = 8
            self.topMoviesCollectionView.layer.cornerRadius = 8
        }
    }
    
    fileprivate func setupCollectionViews() {
        topMoviesCollectionView.delegate = self
        topMoviesCollectionView.dataSource = self
        topMoviesCollectionView.register(UINib(nibName: String(describing: HomeTopMoviesCollectionViewCell.self), bundle: .main), forCellWithReuseIdentifier: topMovieCellId)
        
        trendMoviesCollectionView.delegate = self
        trendMoviesCollectionView.dataSource = self
        trendMoviesCollectionView.register(UINib(nibName: String(describing: HomeMoviesCollectionViewCell.self), bundle: .main), forCellWithReuseIdentifier: trendMovieCellId)
        
        tvShowsCollectionView.delegate = self
        tvShowsCollectionView.dataSource = self
        tvShowsCollectionView.register(UINib(nibName: String(describing: HomeTVShowsCollectionViewCell.self), bundle: .main), forCellWithReuseIdentifier: tvShowcellId)
    }
    
    fileprivate func setupCollectionViewsLayout() {
        if let layout = trendMoviesCollectionView.collectionViewLayout as? BouncyLayout{
            layout.scrollDirection = .horizontal
            layout.sectionInset = .init(top: 0, left: padding, bottom: 0, right: padding)
        }
    }
}

// MARK: - UICollectionView Data Source Methods
extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case self.topMoviesCollectionView:
            return homeViewModel.topMoviesArray.count
        case self.trendMoviesCollectionView:
            return homeViewModel.trendMoviesArray.count
        default:
            return homeViewModel.tvShowsArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case self.topMoviesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topMovieCellId, for: indexPath) as! HomeTopMoviesCollectionViewCell
            cell.topMoviesImageView.image = UIImage(named: homeViewModel.topMoviesArray[indexPath.item].topMoviesImg)
            cell.topMoviesLbl.text = homeViewModel.topMoviesArray[indexPath.item].topMoviesTitle
            return cell
        case self.trendMoviesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: trendMovieCellId, for: indexPath) as! HomeMoviesCollectionViewCell
            cell.movieImageView.image = UIImage(named: homeViewModel.trendMoviesArray[indexPath.item].moviePoster)
            cell.mainView.layer.cornerRadius = 8
            cell.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tvShowcellId, for: indexPath) as! HomeTVShowsCollectionViewCell
            cell.tvShowImageView.image = UIImage(named: homeViewModel.tvShowsArray[indexPath.item])
            cell.mainView.layer.cornerRadius = 8
            cell.layer.applySketchShadow(color: .black, alpha: 0.3, x: 0, y: 0, blur: 5)
            return cell
        }
    }
}

// MARK: - UICollectionView Delegate Methods
extension HomeViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView {
        case self.topMoviesCollectionView:
            let topMovieVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "TopMoviesViewController") as! TopMoviesViewController
            topMovieVC.modalPresentationStyle = .fullScreen
            topMovieVC.selectedTopMovies = self.homeViewModel.topMoviesArray[indexPath.item]
            self.present(topMovieVC, animated: true, completion: nil)
            break
        case self.trendMoviesCollectionView:
            if let cell = collectionView.cellForItem(at: indexPath) as? HomeMoviesCollectionViewCell{
                let heroID = movieImgHeroId + "\(indexPath.item)"
                cell.movieImageView.hero.id = heroID
                let movieVC = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "MovieViewController") as! MovieViewController
                movieVC.modalPresentationStyle = .fullScreen
                movieVC.heroImgID = heroID
                movieVC.selectedMovie = self.homeViewModel.trendMoviesArray[indexPath.item]
                self.present(movieVC, animated: true, completion: nil)
            }
            break
        default:
            if let cell = collectionView.cellForItem(at: indexPath) as? HomeTVShowsCollectionViewCell{
                cell.shake()
            }
            break
        }
    }
}

// MARK: - UICollectionViewLayout Delegate Methods
extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case self.topMoviesCollectionView:
            return CGSize(width: topMoviesCollectionView.frame.width, height: topMoviesCollectionView.frame.height)
        default:
            return CGSize(width: collectionView.frame.width * 0.3, height: collectionView.frame.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

// MARK: - UICollectionViewHorizontalGridLayout Delegate Methods
extension HomeViewController: CollectionViewDelegateHorizontalGridLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, numberOfRowsForSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, widthForItemAt indexPath: IndexPath, rowHeight: CGFloat) -> CGFloat {
        return collectionView.frame.width * 0.5 - 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, rowSpacingForSection section: Int) -> CGFloat {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, columnSpacingForSection section: Int) -> CGFloat {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSection section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 6, bottom: 0, right: 6)
    }
}

