//
//  NowPlaying.swift
//  SpotifyClone
//
//  Created by Neosoft on 14/10/24.
//

import Foundation

protocol NowPlayingViewModelProtocol {
    var nowPlayingVC: DeviceSmallProtocol? { get set }
    func checkDeviceSize() -> Void
}

final class NowPlayingViewModel: NowPlayingViewModelProtocol {

    var nowPlayingVC: DeviceSmallProtocol?
    private let deviceHelper = DeviceHelper.shared
    
    func checkDeviceSize() {
        let deviceSize = deviceHelper.getMobileDeviceSizeCategory()
        if deviceSize == .small {
            nowPlayingVC?.ifDeviceIsSmall()
        }
    }

}
