//
//  OnboardingSecondVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class OnboardingSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didContinueBtnClick(_ sender: Any) {
        let registerVC = RegisterOrSignupVC()
        navigationController?.pushViewController(registerVC, animated: true)
    }
}
