//
//  ColorConstannts .swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

enum ColorConstants: String {
    case customBackground = "customBackground"
    case tabBarBackground = "tabBarBackground"
    
    func color() -> UIColor? {
        return UIColor(named: self.rawValue)
    }
}
