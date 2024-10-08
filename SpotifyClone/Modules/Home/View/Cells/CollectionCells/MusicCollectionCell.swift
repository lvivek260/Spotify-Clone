//
//  MusicCollectionCell.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class MusicCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblSongName: UILabel!
    @IBOutlet weak var lblArtistName: UILabel!
    
    var musicData: MusicModel? {
        didSet {
            guard let musicData else { return }
            imgView.image = UIImage(name: musicData.image)
            lblSongName.text = musicData.songName
            lblArtistName.text = musicData.artistName
        }
    }
}
