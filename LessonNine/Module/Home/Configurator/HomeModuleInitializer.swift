//  
//  HomeModuleInitializer.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class HomeModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: HomeViewController!
    
    override func awakeFromNib() {
        let configurator = HomeModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viewController)
    }
    
}
