//
//  HomeView.swift
//  su22-finalSignIn
//
//  Created by user222239 on 7/25/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            VStack(alignment: .leading, spacing: 16) {
                Text("First Name: \(sessionService.userDetails?.firstName ?? "N/A")")
                Text("Last Name: \(sessionService.userDetails?.lastName ?? "N/A")")
                Text("Occupation: \(sessionService.userDetails?.occupation ?? "N/A")")
            }
            ButtonComponentView(title: "Logout") {
                sessionService.logout()
            }
            
        }
        .padding(.horizontal, 16)
        .navigationTitle("Main ContentView")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        HomeView()
                .environmentObject(SessionServiceImpl())
        }
    }
}
