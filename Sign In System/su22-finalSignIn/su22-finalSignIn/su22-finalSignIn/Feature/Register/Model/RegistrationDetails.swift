//
//  RegistrationDetails.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import Foundation

struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName: String
    var occupation: String
}

extension RegistrationDetails {
    static var new: RegistrationDetails {
        RegistrationDetails(email: "", password: "", firstName: "", lastName: "", occupation: "")
    }
}
