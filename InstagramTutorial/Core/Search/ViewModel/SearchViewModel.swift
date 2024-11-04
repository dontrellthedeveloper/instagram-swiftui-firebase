//
//  SearchViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/4/24.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task {try await fetchAllUsers()}
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
