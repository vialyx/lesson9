//  
//  RegistrationModuleConfigurator.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class RegistrationModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? RegistrationViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: RegistrationViewController) {
        let model = RegistrationModel()
        model.output = viewController
        
        viewController.model = model
    }
    
}
