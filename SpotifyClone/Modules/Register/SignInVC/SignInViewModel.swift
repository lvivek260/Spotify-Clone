//
//  SignInProtocol.swift
//  SpotifyClone
//
//  Created by Neosoft on 14/10/24.
//

import Foundation


protocol SignInViewModelProtocol {
    var signInVC: DeviceSmallProtocol? { get set }
    func checkDevice() -> Void
}


final class SignInViewModel: SignInViewModelProtocol {
    
    var signInVC: DeviceSmallProtocol?
    private let deviceHelper = DeviceHelper.shared
    
    func checkDevice() {
        signInVC?.ifDeviceIsSmall()
    }
    
}
