//
//  HomeBuilder.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

final class HomeBuilder {
    func navigate() -> UIViewController {
        let homeVC = HomeVC()
        let viewModel = HomeViewModel()
        homeVC.viewModel = viewModel
        return homeVC
    }
}
