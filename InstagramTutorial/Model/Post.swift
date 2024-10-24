//
//  Post.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/24/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownderUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "BTS of a recent celeb shoot 📸",
            likes: 320,
            imageUrl: "digital_leo_2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Traveling is a culture ✈️",
            likes: 165,
            imageUrl: "digital_nomad_2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Classic Book 👌",
            likes: 102,
            imageUrl: "love_lopez_2",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "Roller x Skechers",
            likes: 23,
            imageUrl: "roller_taylor_2",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownderUid: NSUUID().uuidString,
            caption: "The Visual Don",
            likes: 145,
            imageUrl: "visual_sam_2",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
        ),
    ]
}
