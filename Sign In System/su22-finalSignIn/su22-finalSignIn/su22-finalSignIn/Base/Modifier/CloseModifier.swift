//
//  CloseModifier.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import SwiftUI

struct CloseModifier: ViewModifier {
    @Environment(\.presentationMode) var presentationMode
    
    func body(content: Content) -> some View {
        
        content
            .toolbar {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            }
    }
}
extension View {
    func applyClose() -> some View {
        self.modifier(CloseModifier())
    }
}
