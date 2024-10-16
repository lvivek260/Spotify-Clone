//
//  NowPlayingVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 07/10/24.
//

import UIKit
import AVFoundation

protocol NowPlayingVCProtocol {
    func showAlertMessage(title: String?, message: String?)
    func ifDeviceIsSmall()
    func ifGetAudioUrl(audioURL: URL)
}

class NowPlayingVC: UIViewController {
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var vStack: UIStackView!
    @IBOutlet weak var lblTotalTime: UILabel!
    @IBOutlet weak var lblCurrenttTime: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    private var viewModel: NowPlayingViewModelProtocol = NowPlayingViewModel()
    private var audioPlayer: AVAudioPlayer?
    private var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        uiConfiguration()
        setupViewModel()
    }
    
    private func uiConfiguration() {
        self.title = viewModel.title
        self.view.overrideUserInterfaceStyle = .dark
    }
    
    private func setupViewModel() {
        viewModel.nowPlayingVC = self
        viewModel.checkDeviceSize()
        viewModel.getAudioUrl()
    }
    
    @IBAction func sliderChange(_ sender: Any) {
        //setValues()
    }
    
    @objc func setValues() {
        let value = (audioPlayer?.currentTime ?? 0)/(audioPlayer?.duration ?? 0)
        slider.value = Float(value)
        lblCurrenttTime.text = String(format: "%.0f", audioPlayer?.currentTime ?? 0)
    }
    
    
    @IBAction func didPausePlayBtnClick(_ sender: Any) {
        if audioPlayer?.isPlaying ?? false {
            audioPlayer?.stop()
        } else {
            audioPlayer?.play()
        }
    }
    
}

extension NowPlayingVC: NowPlayingVCProtocol {
    func showAlertMessage(title: String?, message: String?) {
        self.showAlert(title: title, message: message)
    }
    
    func ifDeviceIsSmall() {
        vStack.spacing = 16
        topConstraint.constant = 0
    }
    
    func ifGetAudioUrl(audioURL: URL) {
        audioPlayer = try? AVAudioPlayer(contentsOf: audioURL)
        audioPlayer?.volume = slider.value
        audioPlayer?.prepareToPlay()
        audioPlayer?.play()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setValues), userInfo: nil, repeats: true)
        lblTotalTime.text = audioPlayer?.duration.description
        lblCurrenttTime.text = audioPlayer?.currentTime.description
    }
}
