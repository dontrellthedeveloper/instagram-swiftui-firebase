//
//  CommentsViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import Firebase
import FirebaseAuth


class CommentsViewModel: ObservableObject {
    @Published var comments = [Comment]()
    
    private let post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func uploadComment(commentText: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let comment = Comment(
            postOwnerUid: post.ownderUid,
            commentText: commentText,
            postId: post.id,
            timestamp: Timestamp(),
            commentOwnerUid: uid
        )
        
        try await CommentService.uploadComment(comment, postId: post.id)
    }
}
