//
//  ProfileBuilder.swift
//  SpotifyClone
//
//  Created by Neosoft on 08/10/24.
//

import UIKit

final class ProfileBuilder {
    
    private var viewModel: ProfileViewModelProtocol?
    
    func setViewModel(viewModel: ProfileViewModelProtocol) -> ProfileBuilder {
        self.viewModel = viewModel
        return self
    }
    
    func build() -> UIViewController {
        let profileVC = ProfileVC()
        profileVC.viewModel = self.viewModel
        return profileVC
    }
    
}
