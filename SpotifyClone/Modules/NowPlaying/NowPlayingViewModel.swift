//
//  NowPlaying.swift
//  SpotifyClone
//
//  Created by Neosoft on 14/10/24.
//

import Foundation

protocol NowPlayingViewModelProtocol {
    var title: String { get }
    var nowPlayingVC: NowPlayingVCProtocol? { get set }
    func checkDeviceSize() -> Void
    func getAudioUrl()
}

final class NowPlayingViewModel: NowPlayingViewModelProtocol {
    
    var nowPlayingVC: NowPlayingVCProtocol?
    private let deviceHelper = DeviceHelper.shared
    let title: String = "Now Playing"
    
    func checkDeviceSize() {
        let deviceSize = deviceHelper.getMobileDeviceSizeCategory()
        if deviceSize == .small {
            nowPlayingVC?.ifDeviceIsSmall()
        }
    }
    
    func getAudioUrl() {
        let songName = Constants.millionaireSong.rawValue
        if let audioPath = Bundle.main.path(forResource: songName, ofType: "mp3") {
            let audioURL = URL(fileURLWithPath: audioPath)
            nowPlayingVC?.ifGetAudioUrl(audioURL: audioURL)
        } else {
            nowPlayingVC?.showAlertMessage(title: "Error", message: "Audio File not found")
        }
    }

}

