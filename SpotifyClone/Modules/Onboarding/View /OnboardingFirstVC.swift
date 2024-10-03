//
//  OnboardingFirstVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class OnboardingFirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didGetStartedBtnClick(_ sender: Any) {
        let secondOnboardingVC = OnboardingSecondVC()
        self.navigationController?.pushViewController(secondOnboardingVC, animated: true)
    }
}
