//
//  MusicListCell.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class MusicListCell: UITableViewCell {

// MARK: - IBOutlets
    @IBOutlet weak var lblSongName: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblDuration: UILabel!
    
// MARK: - Data Binding
    var song: Song? {
        didSet {
            guard let song else { return }
            lblSongName.text = song.title
            lblArtist.text = song.artist
            lblDuration.text = song.duration
        }
    }
    
}
