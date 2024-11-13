//
//  Notification.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import Firebase

struct Notification: Identifiable, Codable {
    let id: String
    var postId: String?
    let timestamp: Timestamp
    let notificationSenderUid: String
    let type: NotificationType
    
    var post: Post?
    var user: User?
}

extension Notification {
    static let MOCK_NOTIFICATION: [Notification] = [
        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .comment),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .comment),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "456", type: .follow),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
//        .init(id: NSUUID().uuidString, timestamp: Timestamp(), notificationSenderUid: "123", type: .like),
    ]
    
}
