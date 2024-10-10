//
//  CustomTextfieldView.swift
//  SpotifyClone
//
//  Created by Neosoft on 03/10/24.
//

import UIKit

class CustomTextfieldView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var textfield: UITextField!
    
    @IBInspectable
    var placeholder: String = "" {
        didSet {
            textfield.placeholder = placeholder
            textfield.attributedPlaceholder = NSAttributedString(
                string: placeholder,
                attributes: [.foregroundColor: UIColor.darkGray,
                             .font: UIFont.systemFont(ofSize: 16, weight: .semibold)]
            )
        }
    }
    
    var text: String? { textfield.text }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
        addGestureRecognizer()
    }
    
    private func commitInit() {
        Bundle.main.loadNibNamed("CustomTextfieldView", owner: self,options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [ .flexibleHeight, .flexibleWidth ]
        
        containerView.layer.cornerRadius = 30.0
        containerView.layer.borderColor = UIColor.darkGray.cgColor
        containerView.layer.borderWidth = 1
    }
    
    private func addGestureRecognizer() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapOnView))
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(tap)
    }
    
    @objc func didTapOnView() {
        textfield.isEnabled = true
        textfield.becomeFirstResponder()
    }
}
