//  
//  RegistrationModuleInitializer.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class RegistrationModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: RegistrationViewController!
    
    override func awakeFromNib() {
        let configurator = RegistrationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
