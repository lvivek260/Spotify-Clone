//
//  DeviceHelper.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//
import UIKit

protocol DeviceSmallProtocol {
    func ifDeviceIsSmall()
}

class DeviceHelper {
    
    static let shared = DeviceHelper()
    private init() {}

    // Enum to categorize device sizes
    enum DeviceSizeCategory {
        case small, medium, large
    }

    // Function to get the device size category
    func getMobileDeviceSizeCategory() -> DeviceSizeCategory {
        let screenSizeInInches = getDeviceScreenSizeInInches()
        
        switch screenSizeInInches {
        case ..<5.5:
            return .small
        case 5.5..<6.5:
            return .medium
        default:
            return .large
        }
    }

    // Helper function to calculate the screen size in inches
    private func getDeviceScreenSizeInInches() -> CGFloat {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let screenScale = UIScreen.main.scale

        // Screen width and height in pixels
        let screenPixelWidth = screenWidth * screenScale
        let screenPixelHeight = screenHeight * screenScale

        // Calculate diagonal in pixels
        let diagonalPixels = sqrt(pow(screenPixelWidth, 2) + pow(screenPixelHeight, 2))

        // Standard PPI (Pixels Per Inch) for iPhones
        let ppi: CGFloat = 326.0

        // Diagonal size in inches
        return diagonalPixels / ppi
    }
}
