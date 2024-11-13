//
//  NotificationManager.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import Foundation

class NotificationManager {
    
    static let shared = NotificationManager()
    private let service = NotificationService()
    
    private init() {}
    
    func uploadLikeNotification(toUid: String, post: Post) {
        service.uploadNotification(toUid: toUid, type: .like, post: post)
    }
    
    func uploadCommentNotification(toUid: String, post: Post) {
        service.uploadNotification(toUid: toUid, type: .comment, post: post)
    }
    
    func uploadFollowingNotification(toUid: String) {
        service.uploadNotification(toUid: toUid, type: .follow)
    }
}
