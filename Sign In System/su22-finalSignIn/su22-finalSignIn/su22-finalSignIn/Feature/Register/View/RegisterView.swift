//
//  RegisterView.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import SwiftUI

struct RegisterView: View {
    
    //@Environment(\.presentationMode) var presentationMode
    @StateObject private var vm = RegistrationViewModelImpl (service: RegistrationServiceImpl())
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    
                    InputTextFieldView(text: $vm.userDetails.email, placeholder: "Email", keyboardType: .emailAddress, sfSymbol: "envelope")
                    InputPasswordView(password: $vm.userDetails.password, placeholder: "Password", sfSymbol: "lock")
                    
                    Divider()
                    
                    InputTextFieldView(text: $vm.userDetails.firstName, placeholder: "First Name", keyboardType: .namePhonePad, sfSymbol: nil)
                    InputTextFieldView(text: $vm.userDetails.lastName, placeholder: "Last Name", keyboardType: .namePhonePad, sfSymbol: nil)
                    InputTextFieldView(text: $vm.userDetails.occupation, placeholder: "Occupation", keyboardType: .namePhonePad, sfSymbol: nil)
                }
                
                ButtonComponentView(title: "Sign up") {
                    vm.Register()
                }
        }
        .padding(.horizontal, 15)
        .navigationTitle("Register")
        .applyClose()
        .alert(isPresented: $vm.hasError,
               content: {
            if case .failed(let error) = vm.state {
                return Alert(title: Text("Error"),
                             message: Text(error.localizedDescription))
            } else {
                return Alert(title: Text("Error"),
                             message: Text("Something went Wrong"))
            }
        })
        
    }
        
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
}
