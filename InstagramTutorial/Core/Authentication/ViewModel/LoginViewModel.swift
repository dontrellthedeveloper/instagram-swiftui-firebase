//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/3/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var password: String = ""
    @Published var email: String = ""

    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
