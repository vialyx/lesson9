//  
//  RegistrationViewController.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class RegistrationViewController: UIViewController {
    
    var model: RegistrationModelInput!
    lazy var contentView: RegistrationViewInput = { return view as! RegistrationViewInput }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        contentView.configure(available: false)
        contentView.textChange = { [unowned self] text, index in
            self.model.data[index] = text
        }
        contentView.action = { [unowned self] in
            self.model.signup()
        }
    }
    
}

// MARK: - RegistrationModelOutput
extension RegistrationViewController: RegistrationModelOutput {
    
    func signupDidSucces() {
        performSegue(withIdentifier: "showHome", sender: model.data)
    }
    
    func signupDidFail(_ error: Error?) {
        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

// MARK: - RegistrationViewControllerInput
extension RegistrationViewController: RegistrationViewControllerInput {}
