//
//  UIImage+Extension.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

extension UIImage {
    convenience init?(name: ImageConstants) {
        self.init(named: name.rawValue)
    }
}
