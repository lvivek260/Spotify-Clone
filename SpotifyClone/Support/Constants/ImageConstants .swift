//
//  ImageConnstants .swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

enum ImageConstants: String  {
    case tabHomeNotSelected = "notSelectHome"
    case tabHomeSelected = "selectedHome"
    case tabLikeNotSelected = "notSelectLike"
    case tabLikeSelected = "selectedLike"
    case tabProfileSelected
    case tabProfileNotSelected = "notSelectProfile"
    case tabSettingSelected 
    case tabSettingNotSelected = "notSelectSetting"
    
    func image() -> UIImage? {
        return UIImage(named: self.rawValue)
    }
}
