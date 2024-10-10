//
//  ProfileVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import UIKit

class ProfileVC: UIViewController {

// MARK: - IBOutlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblFollowers: UILabel!
    @IBOutlet weak var lblFollowing: UILabel!
    //table view
    @IBOutlet weak var playListTableView: UITableView!
    @IBOutlet weak var playListHeight: NSLayoutConstraint!
    
    var viewModel: ProfileViewModelProtocol?
    
// MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        uiConfiguration()
        tableViewSetup()
        fetchProfileData()
    }
    
// MARK: - Methods
    private func uiConfiguration() {
        self.title = "Profile"
        self.overrideUserInterfaceStyle = .dark
    }
    
    private func tableViewSetup() {
        playListTableView.dataSource = self
        playListTableView.delegate = self
        playListTableView.register(PlayListTableViewCell.nib, forCellReuseIdentifier: PlayListTableViewCell.id)
    }
    
    private func fetchProfileData() {
        viewModel?.getProfileData { [weak self] profileData in
            guard let self else { return }
            self.profileImg.image = UIImage(name: profileData.imageName)
            lblEmail.text = profileData.email
            lblUserName.text = profileData.userName
            lblFollowers.text = profileData.followers
            lblFollowing.text = profileData.following
        }
    }
}

// MARK: - TableView Data Source Methods
extension ProfileVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.playList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlayListTableViewCell.id, for: indexPath) as? PlayListTableViewCell else {
            return PlayListTableViewCell()
        }
        cell.playList = viewModel?.playList[indexPath.row]
        return cell
    }
}

// MARK: - TableView Delegate Methods
extension ProfileVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            self.playListHeight.constant = self.playListTableView.contentSize.height
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nowPlayingVC = NowPlayingVC()
        nowPlayingVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(nowPlayingVC, animated: true)
    }
}
