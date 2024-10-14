//
//  RegisterViewModel.swift
//  SpotifyClone
//
//  Created by Neosoft on 14/10/24.
//

import Foundation

protocol RegisterViewModelProtocol {
    var registerVC: DeviceSmallProtocol? { get set }
    func checkDeviceSize() -> Void
}

final class RegisterViewModel: RegisterViewModelProtocol {
    
    var registerVC: DeviceSmallProtocol?
    private let deviceHelper = DeviceHelper.shared
    
    func checkDeviceSize() {
        let deviceSize = deviceHelper.getMobileDeviceSizeCategory()
        if deviceSize == .small {
            registerVC?.ifDeviceIsSmall()
        }
    }
    
}
