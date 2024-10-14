//
//  RegisterVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit


class RegisterVC: UIViewController {

// MARK: - IBOutlets
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet var heightConstraints: [NSLayoutConstraint]!
    
    private var viewModel: RegisterViewModelProtocol = RegisterViewModel()
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
// MARK: - Configurations Methods
    private func setupViewModel() {
        viewModel.registerVC = self
        viewModel.checkDeviceSize()
    }
    
// MARK: - IBActions
    @IBAction func didBackBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didRegisterBtnClick() {
        if let window = self.getWindow() {
            window.rootViewController = TabBarController()
            window.makeKeyAndVisible()
        }
    }

}

extension RegisterVC: DeviceSmallProtocol {
    func ifDeviceIsSmall() {
        topConstraint.constant = 20
        heightConstraints.forEach { constraint in
            constraint.constant = 60
        }
    }
}
