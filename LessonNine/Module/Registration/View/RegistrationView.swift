//  
//  RegistrationView.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol RegistrationViewInput: class {
    func configure(available: Bool)
    var textChange: ((String, Int) -> Void)? { get set }
    var action: (() -> Void)? { get set }
}

extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}

final class RegistrationView: UIView {
    
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signup: UIButton!
    
    var textChange: ((String, Int) -> Void)?
    var action: (() -> Void)?
    
    // MARK: - Actions
    @IBAction func signupDidTap(_ sender: Any) {
        action?()
        rotate()
    }
    
    private func rotate() {
        UIView.animate(withDuration: 0.2, delay: 1.0, options: [.autoreverse], animations: {
//            self.nickname.transform = CGAffineTransform(rotationAngle: CGFloat(180).degreesToRadians)
//                .scaledBy(x: 2.0, y: 2.0)
//                .translatedBy(x: 0.0, y: 400.0)
//                .inverted()
            self.nickname.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//            self.nickname.alpha = 0.0
        }) { (success) in
//            self.nickname.alpha = 1.0
            self.nickname.transform = .identity
            print("animation success: \(success)")
        }
    }
    
}

// MARK: - RegistrationViewInput
extension RegistrationView: RegistrationViewInput {
    
    func configure(available: Bool) {
        signup.isEnabled = available
    }
    
}

extension RegistrationView: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textChange?(textField.text ?? "", textField.tag)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return true
    }
    
}
