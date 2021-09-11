//
//  LoginViewController.swift
//  TestLoop
//
//  Created by Ahmed Abdelmoula on 11.09.21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var pwdTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var emailTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var pwdTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        displayItemsWithAnimation()
        
    }
}

// MARK: - Setting Up Views
extension LoginViewController{
    fileprivate func setupUI() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            self.emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email",
                                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            self.pwdTxtField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            
            self.emailTxtField.layer.borderWidth = 1
            self.emailTxtField.layer.borderColor = UIColor.white.cgColor
            
            self.pwdTxtField.layer.borderWidth = 1
            self.pwdTxtField.layer.borderColor = UIColor.white.cgColor
            
            self.emailTxtField.layer.cornerRadius = self.emailTxtField.frame.height * 0.5
            self.pwdTxtField.layer.cornerRadius = self.pwdTxtField.frame.height * 0.5
            self.loginBtn.layer.cornerRadius = self.loginBtn.frame.height * 0.5
        }
    }
}

// MARK: - Animation Methods
extension LoginViewController{
    fileprivate func displayItemsWithAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [weak self] in
            guard let self = self else { return }
            self.fadeInEmail()
        }
    }
    
    fileprivate func fadeInEmail() {
        self.emailTopConstraint.constant = -20
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.emailTxtField.alpha = 1
            self.view.layoutIfNeeded()
        }) { _ in
            self.fadeInPwd()
        }
    }
    
    fileprivate func fadeInPwd() {
        self.pwdTopConstraint.constant = 15
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.pwdTxtField.alpha = 1
            self.view.layoutIfNeeded()
        }) { _ in
            self.fadeInLogin()
        }
    }
    
    fileprivate func fadeInLogin() {
        self.loginTopConstraint.constant = 15
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            self.loginBtn.alpha = 1
            self.view.layoutIfNeeded()
        })
    }
}

// MARK: - Items Actions Methods
extension LoginViewController{
    @IBAction func dismissVC(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginAction(){
        self.loginBtn.shake()
    }
}
