//
//  RegisterVC.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit


class RegisterVC: UIViewController {

    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet var heightConstraints: [NSLayoutConstraint]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupConstraint()
    }
    
    private func setupConstraint() {
        let device = DeviceHelper.getMobileDeviceSizeCategory()
        
        if device == .small {
            topConstraint.constant = 20
            heightConstraints.forEach { constraint in
                constraint.constant = 60
            }
        }
    }

    @IBAction func didBackBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}

