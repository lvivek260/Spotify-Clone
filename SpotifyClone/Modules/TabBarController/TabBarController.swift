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
        let homeVC = UINavigationController(rootViewController: HomeBuilder().navigate())
        let settingVC = UINavigationController(rootViewController: SettingVC())
        let likeVC = UINavigationController(rootViewController: LikeVC())
        let profileVC  = UINavigationController(rootViewController: ProfileVC())
        
        homeVC.tabBarItem = .init(title: nil,
                                 image: ImageConstants.tabHomeNotSelected.image(),
                                 selectedImage: ImageConstants.tabHomeSelected.image())
        settingVC.tabBarItem = .init(title: nil,
                                  image: ImageConstants.tabSettingNotSelected.image(),
                                  tag: 1)
        likeVC.tabBarItem = .init(title: nil,
                                 image: ImageConstants.tabLikeNotSelected.image(),
                                 selectedImage: ImageConstants.tabLikeSelected.image())
        profileVC.tabBarItem = .init(title: nil,
                                  image: ImageConstants.tabProfileNotSelected.image(),
                                  tag: 3)
        
        self.viewControllers = [homeVC, settingVC, likeVC, profileVC]
    }
 
}
