//
//  PublicTableViewCell.swift
//  SpotifyClone
//
//  Created by Neosoft on 08/10/24.
//

import UIKit

class PlayListTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    
    
    var playList: PlayListModel? {
        didSet {
            guard let playList else { return }
            imgView.image = UIImage(name: playList.profileImg)
            lblTitle.text = playList.title
            lblArtist.text = playList.artist
            lblDuration.text = playList.duration
        }
    }
    
}
