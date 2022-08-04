//
//  LoginService.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//
import Combine
import Foundation
import FirebaseAuth

protocol LoginService {
    func login(with credentials: LoginCredentials) -> AnyPublisher<Void, Error>
}

final class LoginServiceImpl: LoginService {
    
    func login(with credentials: LoginCredentials) -> AnyPublisher<Void, Error> {
        
        Deferred {
            
            Future { promise in
                
                Auth.auth().signIn(withEmail: credentials.email, password: credentials.password) { res, error in
                    
                    if let err = error {
                        promise(.failure(err))
                    } else {
                        promise(.success(()))
                    }
                }
            }
        }
        .receive(on: RunLoop.main)
        .eraseToAnyPublisher()
    }
}
