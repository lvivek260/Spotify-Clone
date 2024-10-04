//
//  UIViewController+Extension.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

extension UIViewController {
    
    func getWindow() -> UIWindow? {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return window
    }
    
}
