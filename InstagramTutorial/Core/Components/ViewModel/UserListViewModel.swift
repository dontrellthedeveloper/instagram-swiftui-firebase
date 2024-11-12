//
//  UserListViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import Foundation

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        print("DEBUG: Did init..")
    }
    
    
    func fetchUsers(forConfig config: UserListConfig) async {
        do {
            self.users = try await UserService.fetchUsers(forConfig: config)
        } catch {
            print("DEBUG: Error fetching users: \(error.localizedDescription)")
        }
        
    }
}
