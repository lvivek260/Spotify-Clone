//
//  NowPlayingVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit

class NowPlayingVC: UIViewController {
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var vStack: UIStackView!
    private var viewModel: NowPlayingViewModelProtocol = NowPlayingViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        uiConfiguration()
        setupViewModel()
    }
    
    private func uiConfiguration() {
        self.title = "Now Playing"
        self.view.overrideUserInterfaceStyle = .dark
    }
    
    private func setupViewModel() {
        viewModel.nowPlayingVC = self
        viewModel.checkDeviceSize()
    }

}

extension NowPlayingVC: DeviceSmallProtocol {
    func ifDeviceIsSmall() {
        vStack.spacing = 16
        topConstraint.constant = 0 
    }
}
