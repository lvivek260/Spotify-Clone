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
    
    func showAlert(title: String?,
                   message: String?,
                   handler: (() -> Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okey = UIAlertAction(title: "Ok", style: .default) { _ in
            handler?()
        }
        alert.addAction(okey)
        present(alert, animated: true)
    }
    
}
