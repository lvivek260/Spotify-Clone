//
//  TitleCollectionCell.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class TitleCollectionCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var selectionImg: UIImageView!
    
    override var isSelected: Bool {
        didSet {
            lblTitle.textColor = isSelected ? .white : .lightGray
            selectionImg.isHidden = !isSelected
            lblTitle.font = UIFont.systemFont(ofSize: 20.0, weight: isSelected ? .semibold : .medium)
        }
    }
    
    override func awakeFromNib() {
        lblTitle.textColor = isSelected ? .white : .lightGray
        selectionImg.isHidden = !isSelected
        lblTitle.font = UIFont.systemFont(ofSize: 20.0, weight: isSelected ? .semibold : .medium)
    }
}
