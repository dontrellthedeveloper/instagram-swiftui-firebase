//
//  DeveloperPreview.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/11/24.
//

import SwiftUI
import Firebase
import FirebaseAuth

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let comment = Comment(postOwnerUid: "123", commentText: "Test Comment", postId: "1234", timestamp: Timestamp(), commentOwnerUid: "123345")
}
