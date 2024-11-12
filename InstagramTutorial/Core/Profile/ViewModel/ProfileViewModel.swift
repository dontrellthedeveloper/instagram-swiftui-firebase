//
//  ProfileViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/11/24.
//

import Foundation

@MainActor
class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        print("DEBUG: Did init...")
        self.user = user
    }
    
    func fetchUserStats() {
        guard user.stats == nil else { return }
        Task {
            self.user.stats = try await UserService.fetchUserStats(uid: user.id)
        }
    }
}


// MARK: - Following


extension ProfileViewModel {
    
    
    func follow() {
        Task {
            try await UserService.follow(uid: user.id)
            user.isFollowed = true
        }
    }
    
    
    func unfollow() {
        Task {
            try await UserService.unfollow(uid: user.id)
            user.isFollowed = false
        }
    }
    
    
    func checkIfUserIsFollowed() {
        guard user.isFollowed == nil else { return }
        Task {
            self.user.isFollowed = try await UserService.checkIfUserIsFollowed(uid: user.id)
        }
    }
}
