//
//  Comment.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import Firebase
import FirebaseFirestore

struct Comment: Codable, Identifiable {
    @DocumentID var commentId: String?
    let postOwnerUid: String
    let commentText: String
    let postId: String
    let timestamp: Timestamp
    let commentOwnerUid: String
    
    var user: User?

    var id: String {
        return commentId ?? NSUUID().uuidString
    }
}

extension Comment {
    static let MOCK_COMMENT = Comment(postOwnerUid: "123", commentText: "Test Comment", postId: "1234", timestamp: Timestamp(), commentOwnerUid: "123345")
}
