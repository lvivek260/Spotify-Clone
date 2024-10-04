//
//  HomeVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var contentTitleCollection: UICollectionView!
    @IBOutlet weak var musicCollectionView: UICollectionView!
    @IBOutlet weak var musicListTableView: UITableView!
    
    let viewModel: HomeViewModelProtocol = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        collectionViewSetup()
        tableViewSetup()
    }
    
    private func collectionViewSetup() {
        //Title Collection View Configuration
        contentTitleCollection.delegate = self
        contentTitleCollection.dataSource = self
        contentTitleCollection.register(TitleCollectionCell.nib, forCellWithReuseIdentifier: TitleCollectionCell.id)
        
        DispatchQueue.main.async {
            let indexPath = IndexPath(item: 0, section: 0)
            self.contentTitleCollection.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
            self.collectionView(self.contentTitleCollection, didSelectItemAt: indexPath)
        }
        
        //Music Collection View Configuration
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self
        musicCollectionView.register(MusicCollectionCell.nib, forCellWithReuseIdentifier: MusicCollectionCell.id)
    }
    
    private func tableViewSetup() {
        musicListTableView.dataSource = self
        musicListTableView.register(MusicListCell.nib, forCellReuseIdentifier: MusicListCell.id)
    }
   
}

extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case contentTitleCollection : return viewModel.titles.count
        case musicCollectionView : return 10
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case contentTitleCollection :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionCell.id, for: indexPath) as? TitleCollectionCell else {
                return TitleCollectionCell()
            }
            cell.lblTitle.text = viewModel.titles[indexPath.row]
            return cell
            
        case musicCollectionView :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionCell.id, for: indexPath) as? MusicCollectionCell else {
                return MusicCollectionCell()
            }
            return cell
        default: return UICollectionViewCell()
        }
    }
}

extension HomeVC: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        
        switch collectionView {
        case contentTitleCollection :
            let title = viewModel.titles[indexPath.row]
            let width = title.width(usingFont: UIFont.systemFont(ofSize: 20.0, weight: .semibold))
            return CGSize(width: width + 10.0, height: height)
            
        case musicCollectionView :
            let width = 147.0
            return CGSize(width: width, height: height)
        default: return CGSize()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch collectionView {
        case contentTitleCollection : return 10
        case musicCollectionView : return 7
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}


extension HomeVC: UITableViewDataSource {
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

//extension HomeVC {
//    private func setUpNavigationBar() {
//        //Title Custom View
//        let imageView = UIImageView(image: ImageConstants.spotifyIcon.image())
//        imageView.contentMode = .scaleAspectFit
//        self.navigationItem.titleView = imageView
//
//        // Assign the buttons to the navigation item
//        let searchBtn = UIBarButtonItem(image: ImageConstants.search.image(), style: .done, target: self, action: #selector(didSearchBtnClick))
//        self.navigationItem.leftBarButtonItem = searchBtn
//
//        let menuBtn = UIBarButtonItem(image: ImageConstants.menu.image(), style: .done, target: self, action: #selector(didMenuBtnClick))
//        self.navigationItem.rightBarButtonItem = menuBtn
//    }
//
//    @objc func didSearchBtnClick() {
//        print(#function)
//    }
//
//    @objc func didMenuBtnClick() {
//        print(#function)
//    }
//}
