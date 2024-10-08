//
//  ProfileBuilder.swift
//  SpotifyClone
//
//  Created by Neosoft on 08/10/24.
//

import UIKit

final class ProfileBuilder {
    func navigate() -> UIViewController {
        let profileVC = ProfileVC()
        profileVC.viewModel = ProfileViewModel()
        return profileVC
    }
}
