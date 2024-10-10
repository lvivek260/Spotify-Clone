//
//  HomeBuilder.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

final class HomeBuilder {
    
    private var viewModel: HomeViewModelProtocol?
    
    func setViewModel(viewModel: HomeViewModelProtocol) -> HomeBuilder {
        self.viewModel = viewModel
        return self
    }
    
    func build() -> UIViewController {
        let homeVC = HomeVC()
        homeVC.viewModel = self.viewModel
        return homeVC
    }
    
}
