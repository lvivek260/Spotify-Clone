//
//  SignInVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet var heightConstraints: [NSLayoutConstraint]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSetup()
    }

    
    private func uiSetup() {
        let deviceSize = DeviceHelper.getMobileDeviceSizeCategory()
        if deviceSize == .small {
            topConstraint.constant = 20.0
            heightConstraints.forEach { constraint in
                constraint.constant = 60
            }
        }
    }

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
