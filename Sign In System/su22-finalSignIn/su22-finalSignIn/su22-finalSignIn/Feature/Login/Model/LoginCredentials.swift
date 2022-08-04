//
//  LoginCredentials.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import Foundation

struct LoginCredentials {
    var email: String
    var password: String
}

extension LoginCredentials {
    
    static var new: LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
}
