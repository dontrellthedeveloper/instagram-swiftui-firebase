//
//  FeedCellViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import Foundation

@MainActor
class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
        Task {try await checkIfUserLikedPost()}
    }
    
//    @MainActor
    func like() async throws {
        do {
            let postCopy = post
            post.didLike = true
            post.likes += 1
            try await PostService.likePost(postCopy)
            NotificationManager.shared.uploadLikeNotification(toUid: post.ownderUid, post: post)
        } catch {
            post.didLike = false
            post.likes -= 1
        }
    }
    
//    @MainActor
    func unlike() async throws {
        do {
            let postCopy = post
            post.didLike = false
            post.likes -= 1
            try await PostService.unlikePost(postCopy)
            
            await NotificationManager.shared.deleteLikeNotification(notificationOwnerUid: post.ownderUid, post: post)
            
        } catch {
            post.didLike = true
            post.likes += 1
        }
    }
    
    func checkIfUserLikedPost() async throws {
        self.post.didLike = try await PostService.checkIfUserLikedPost(post)
    }
}
