//
//  SignInVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class SignInVC: UIViewController {

// MARK: - IBOutlets
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet var heightConstraints: [NSLayoutConstraint]!
    
    private var viewModel: SignInViewModelProtocol = SignInViewModel()
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelSetup()
    }
    
// MARK: - Configurations Methods
    private func viewModelSetup() {
        viewModel.signInVC = self
        viewModel.checkDevice()
    }

// MARK: - IBActions
    @IBAction func didBackBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didSignInBtnClick(_ sender: Any) {
        if let window = self.getWindow() {
            window.rootViewController = TabBarController()
            window.makeKeyAndVisible()
        }
    }
}

// MARK: - DeviceSmallProtocol Methods
extension SignInVC: DeviceSmallProtocol {
    func ifDeviceIsSmall() {
        topConstraint.constant = 20.0
        heightConstraints.forEach { constraint in
            constraint.constant = 60
        }
    }
}
