//
//  CommentsViewController.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 11.09.21.
//

import UIKit
import Lottie

class CommentsViewController: UIViewController {
    
    @IBOutlet weak var emptyView: UIView!
    
    let emptyAnimation = AnimationView(name: "empty_list")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Add Notification Observer to resume the animation when the app is back to foreground
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: .main) { [weak self] _ in
            guard let self = self else { return }
            self.emptyAnimation.play()
        }
    }
    
    // MARK: - Remove Notification Observer
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: - Setting Up Views
extension CommentsViewController{
    fileprivate func setupUI() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.emptyAnimation.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            self.emptyAnimation.contentMode = .scaleAspectFill
            self.emptyAnimation.frame = self.emptyView.bounds
            self.emptyAnimation.center = self.emptyView.boundsCenter
            
            self.emptyAnimation.loopMode = .loop
            self.emptyAnimation.play()
            self.emptyView.addSubview(self.emptyAnimation)
        }
    }
}

// MARK: - Items Actions Methods
extension CommentsViewController{
    @IBAction func dismissVC(){
        self.dismiss(animated: true, completion: nil)
    }
}
