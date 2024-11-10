//
//  FeedViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/9/24.
//

import Foundation
import Firebase


class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts()}
    }
    
    @MainActor
    func fetchPosts() async throws {
        let snapshot = try await Firestore.firestore().collection("posts").getDocuments()
//        self.posts = try snapshot.documents.compactMap({ document in
//            let post = try document.data(as: Post.self)
//            return post
//        })
        self.posts = try snapshot.documents.compactMap({ try $0.data(as: Post.self)})
        
        for i in 0..<posts.count {
            let post = posts[i]
            let ownerUid = post.ownderUid
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            self.posts[i].user = postUser
        }
    }
}
