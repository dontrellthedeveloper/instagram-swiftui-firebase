//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/20/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
