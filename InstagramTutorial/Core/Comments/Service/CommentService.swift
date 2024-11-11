//
//  CommentService.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import FirebaseFirestore
import Firebase

struct CommentService {
    
    static func uploadComment(_ comment: Comment, postId: String) async throws {
        guard let commentData = try? Firestore.Encoder().encode(comment) else { return }
        
        try await Firestore
            .firestore()
            .collection("posts")
            .document(postId)
            .collection("post-comments")
            .addDocument(data: commentData)
    }
}
