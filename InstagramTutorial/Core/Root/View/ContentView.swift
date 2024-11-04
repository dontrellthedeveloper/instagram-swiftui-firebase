//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/20/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else if let currentUser = viewModel.currentUser {
                MainTabView(user: currentUser)
                    
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
