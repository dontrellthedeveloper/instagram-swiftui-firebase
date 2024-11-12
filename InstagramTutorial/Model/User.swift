//
//  User.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/23/24.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
    var isFollowed: Bool? = false
    var stats: UserStats?
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

struct UserStats: Codable, Hashable {
    var followingCount: Int
    var followersCount: Int
    var postsCount: Int
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "digital_leo", profileImageUrl: nil, fullName: "Leo Chriss", bio: "Follow @digital_leo for hot photography.", email: "leo@leodigital.com"),
        .init(id: NSUUID().uuidString, username: "digitalnomad", profileImageUrl: nil, fullName: "Bruce Baker", bio: "36 out of 50 states. 126 countries. I'm coming for the globe.", email: "bbaker@gmail.com"),
        .init(id: NSUUID().uuidString, username: "lovelopez", profileImageUrl: nil, fullName: nil, bio: "GMD Models. Oakland, CA -> Los Angeles, CA", email: "lisalopez@gmail.com"),
        .init(id: NSUUID().uuidString, username: "roller.taylor", profileImageUrl: nil, fullName: "Stacey Taylor", bio: "Passionately skating.", email: "leo@leodigital.com"),
        .init(id: NSUUID().uuidString, username: "visualsam", profileImageUrl: nil, fullName: "Sam Thompson", bio: "Visual Artist. Digital Paining....", email: "sam@visualsam.com"),
    ]
}
