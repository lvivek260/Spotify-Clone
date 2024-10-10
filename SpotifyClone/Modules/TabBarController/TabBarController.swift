//
//  TabBarController.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        tabBarBackgroundViewSetup()
    }
    
    private func tabBarBackgroundViewSetup() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(name: .tabBarBackground)
        self.tabBar.standardAppearance = appearance
        self.tabBar.scrollEdgeAppearance = appearance
    }
    
    private func configureViewController() {
        let homeVC = HomeBuilder()
            .setViewModel(viewModel: HomeViewModel())
            .build()
        
        let profileVC = ProfileBuilder()
            .setViewModel(viewModel: ProfileViewModel())
            .build()
        
        let homeNavigation = UINavigationController(rootViewController: homeVC)
        let settingVC = UINavigationController(rootViewController: SettingVC())
        let likeVC = UINavigationController(rootViewController: LikeVC())
        let profileNavigation  = UINavigationController(rootViewController: profileVC)
        
        homeVC.tabBarItem = .init(title: nil,
                                  image: UIImage(name: .tabHomeNotSelected),
                          selectedImage: UIImage(name: .tabHomeSelected))
        settingVC.tabBarItem = .init(title: nil,
                                     image: UIImage(name: .tabSettingNotSelected),
                                       tag: 1)
        likeVC.tabBarItem = .init(title: nil,
                                  image: UIImage(name: .tabLikeNotSelected),
                          selectedImage: UIImage(name: .tabLikeSelected))
        profileVC.tabBarItem = .init(title: nil,
                                     image: UIImage(name: .tabProfileNotSelected),
                                     selectedImage: UIImage(systemName:"person.fill"))
        
        self.viewControllers = [homeNavigation, profileNavigation]
    }
 
}
