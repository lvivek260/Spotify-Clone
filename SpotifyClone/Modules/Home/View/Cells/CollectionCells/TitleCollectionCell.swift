//
//  TitleCollectionCell.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class TitleCollectionCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.3) {
                self.lblTitle.textColor = self.isSelected ? .white : .lightGray
                self.lblTitle.font = UIFont.systemFont(ofSize: 20.0, weight: self.isSelected ? .semibold : .medium)
            }
        }
    }
    
    override func awakeFromNib() {
        lblTitle.textColor = isSelected ? .white : .lightGray
        lblTitle.font = UIFont.systemFont(ofSize: 20.0, weight: isSelected ? .semibold : .medium)
    }
}
