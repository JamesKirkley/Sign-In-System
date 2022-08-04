//
//  ButtonComponentView.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import SwiftUI

struct ButtonComponentView: View {

    
    
    typealias ActionHandler = () -> Void
    
    let title:String
    let foreground: Color
    let background: Color
    let border: Color
    let handler: ActionHandler
    
    private let cornerRadius: CGFloat = 10
    
    internal init(title: String, foreground: Color = .white, background: Color = .blue, border: Color = .clear, handler: @escaping ButtonComponentView.ActionHandler) {
        self.title = title
        self.foreground = foreground
        self.background = background
        self.border = border
        self.handler = handler
    }
    var body: some View {
        Button(action: handler, label: {
            Text(title)
                .frame(maxWidth: .infinity, maxHeight: 50)
        })
        .background(background)
        .foregroundColor(foreground)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(cornerRadius)
        .overlay(RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(border, lineWidth: 2))
    }
}

struct ButtonComponentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonComponentView(title: "Primary Button") { }
                .preview(with: "Primary Button View")
            
            ButtonComponentView(title: "Secondary Button", foreground: .blue, background: .clear, border: .blue) { }
                .preview(with: "Secondary Button View")
        }
    }
}
