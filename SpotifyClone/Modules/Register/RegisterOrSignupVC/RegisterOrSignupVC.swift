//
//  RegisterOrSignupVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class RegisterOrSignupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didRegisterBtnClick(_ sender: Any) {
        navigationController?.pushViewController(RegisterVC(), animated: true)
    }
    
    @IBAction func didSignInBtnClick(_ sender: Any) {
        navigationController?.pushViewController(SignInVC(), animated: true)
    }
    
}
