//
//  UserService.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/4/24.
//

import Foundation
import Firebase
import FirebaseAuth

class UserService {
    
    @Published var currentUser: User?

    static let shared = UserService()
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        self.currentUser = try await Firestore.firestore().collection("users").document(uid).getDocument().data(as: User.self)
    }
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({try? $0.data(as: User.self) })
    }
}
