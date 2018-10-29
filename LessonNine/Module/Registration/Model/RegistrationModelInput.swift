//  
//  RegistrationModelInput.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

protocol RegistrationModelInput {
    var data: RegistrationData { get set }
    func signup()
}
