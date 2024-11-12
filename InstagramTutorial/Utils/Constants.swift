//
//  Constants.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/11/24.
//

import Firebase

struct FirebaseConstants {
    static let Root = Firestore.firestore()
    
    static let UserCollection = Root.collection("users")
    
    static let PostCollection = Root.collection("posts")
}
