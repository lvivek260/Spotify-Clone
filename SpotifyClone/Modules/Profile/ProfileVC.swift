//
//  ProfileVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        uiConfiguration()
    }
    
    private func uiConfiguration() {
        self.title = "Profile"
        self.view.overrideUserInterfaceStyle = .dark
    }

}
