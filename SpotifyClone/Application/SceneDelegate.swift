//
//  SceneDelegate.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        let firstOnboardingScreen = OnboardingFirstVC()
        let navigation = UINavigationController(rootViewController: firstOnboardingScreen)
        navigation.isNavigationBarHidden = true
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }

   
    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

