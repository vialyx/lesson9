//
//  RegistrationData.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import Foundation

struct RegistrationData {
    var nickname: String = ""
    var email: String = ""
    var password: String = ""
}

extension RegistrationData {
    
    subscript(_ index: Int) -> String {
        get {
            switch index {
            case 0:
                return nickname
            case 1:
                return email
            case 2:
                return password
            default:
                return ""
            }
        }
        set {
            switch index {
            case 0:
                nickname = newValue
            case 1:
                email = newValue
            case 2:
                password = newValue
            default:
                break
            }
        }
    }
    
}
