//
//  FeedCellViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import Foundation


class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    @MainActor
    func like() async throws {
        post.didLike = true
        post.likes += 1
    }
    
    @MainActor
    func unlike() async throws {
        post.didLike = false
        post.likes -= 1
    }
}
