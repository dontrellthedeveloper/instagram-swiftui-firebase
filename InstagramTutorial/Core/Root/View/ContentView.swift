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
            } else {
                MainTabView()
                    .environmentObject(registrationViewModel)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
