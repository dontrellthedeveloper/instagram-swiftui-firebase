//
//  NotificationType.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import Foundation

enum NotificationType: Int, Codable {
    case follow
    case comment
    case like
    
    var notificationMessage: String {
        switch self {
        case .like: return "liked one of your posts."
        case .comment: return "commented on one of your posts."
        case .follow: return "started following you."
        }
    }
}
