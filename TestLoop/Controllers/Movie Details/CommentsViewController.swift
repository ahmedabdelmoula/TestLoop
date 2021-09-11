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
    
    let popcornAnimation = AnimationView(name: "empty_popcorn")
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: .main) { [weak self] _ in
            guard let self = self else { return }
            self.popcornAnimation.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.popcornAnimation.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            self.popcornAnimation.contentMode = .scaleAspectFill
            self.popcornAnimation.frame = self.emptyView.bounds
            self.popcornAnimation.center = self.emptyView.boundsCenter
            
            self.popcornAnimation.loopMode = .loop
            self.popcornAnimation.play()
            self.emptyView.addSubview(self.popcornAnimation)
        }
    }
    
    @IBAction func dismissVC(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
