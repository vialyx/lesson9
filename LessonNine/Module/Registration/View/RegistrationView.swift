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
