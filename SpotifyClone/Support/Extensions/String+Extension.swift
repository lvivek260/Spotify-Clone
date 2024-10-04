//
//  String+Extension.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

extension String {
    func width(usingFont font: UIFont) -> CGFloat {
        let constraintSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = (self as NSString).boundingRect(with: constraintSize,
                                                         options: .usesLineFragmentOrigin,
                                                         attributes: [.font: font],
                                                         context: nil)
        return boundingBox.width
    }
}
