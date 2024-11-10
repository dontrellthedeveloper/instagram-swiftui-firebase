//
//  Post.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/24/24.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownderUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
    
    var didLike: Bool? = false
}

extension Post {
    static let MOCK_IMAGE_URL =
    "https://i.ibb.co/7v0DRQw/Screen-Shot-2022-08-15-at-1-25-30-PM.jpg"
    
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "BTS of a recent celeb shoot 📸",
            likes: 320,
            imageUrl: Post.MOCK_IMAGE_URL,
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Traveling is a culture ✈️",
            likes: 165,
            imageUrl: Post.MOCK_IMAGE_URL,
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Classic Book 👌",
            likes: 102,
            imageUrl: Post.MOCK_IMAGE_URL,
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Roller x Skechers",
            likes: 23,
            imageUrl: Post.MOCK_IMAGE_URL,
            timestamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "The Visual Don",
            likes: 145,
            imageUrl: Post.MOCK_IMAGE_URL,
            timestamp: Timestamp(),
            user: User.MOCK_USERS[4]
        ),
    ]
}
