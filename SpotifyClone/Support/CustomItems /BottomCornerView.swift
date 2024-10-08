//
//  BottomCornerView.swift
//  SpotifyClone
//
//  Created by Neosoft on 08/10/24.
//

import UIKit

class BottomCornerView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.roundCorners(corners: [.bottomRight, .bottomLeft], radius: 50)
    }
    
}
