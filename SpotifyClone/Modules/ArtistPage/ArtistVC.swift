//
//  ArtistVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

class ArtistVC: UIViewController {

    @IBOutlet weak var albumCollectionView: UICollectionView!
    @IBOutlet weak var musicListTableView: UITableView!
    @IBOutlet weak var musicListHeight: NSLayoutConstraint!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        tableViewSetup()
    }

    private func setupCollectionView() {
        albumCollectionView.delegate = self
        albumCollectionView.dataSource = self
        albumCollectionView.register(AlbumsCollectionViewCell.nib, forCellWithReuseIdentifier: AlbumsCollectionViewCell.id)
    }
    
    private func tableViewSetup() {
        musicListTableView.dataSource = self
        musicListTableView.delegate = self
        musicListTableView.register(MusicListCell.nib, forCellReuseIdentifier: MusicListCell.id)
    }
}

extension ArtistVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCollectionViewCell.id, for: indexPath) as? AlbumsCollectionViewCell else {
            return AlbumsCollectionViewCell()
        }
        return cell
    }
}

extension ArtistVC: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        let width = height - 36.0
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}


// MARK: - TableView Data Source Methods
extension ArtistVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = musicListTableView.dequeueReusableCell(withIdentifier: MusicListCell.id, for: indexPath) as? MusicListCell else {
            return MusicListCell()
        }
        return cell
    }
}

// MARK: - TableView Delegate Methods
extension ArtistVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            self.musicListHeight.constant = self.musicListTableView.contentSize.height
        }
    }
}
