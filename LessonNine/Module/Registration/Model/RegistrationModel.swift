//  
//  RegistrationModel.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import Foundation

enum RegistrationError: Error {
    case shortPassword(Int)
}

extension RegistrationError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .shortPassword(let count):
            return "Too short passsword. Min length is \(count)"
        }
    }
    
}

final class RegistrationModel: RegistrationModelInput {
    
    weak var output: RegistrationModelOutput!
    var data: RegistrationData = RegistrationData()
    private let minPasswordLenght = 6
    
    func signup() {
        guard data.password.count >= minPasswordLenght else {
            output.signupDidFail(RegistrationError.shortPassword(minPasswordLenght))
            return
        }
        /*
         Call API......
         */
        output.signupDidSucces()
    }
    
}
