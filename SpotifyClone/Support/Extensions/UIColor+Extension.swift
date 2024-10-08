//
//  UIColor+Extension.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

extension UIColor {
    convenience init?(name: ColorConstants) {
        self.init(named: name.rawValue)
    }
}
