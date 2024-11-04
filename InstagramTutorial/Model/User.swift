//
//  User.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/23/24.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImage: String?
    var fullName: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "digital_leo", profileImage: "digital_leo_main", fullName: "Leo Chriss", bio: "Follow @digital_leo for hot photography.", email: "leo@leodigital.com"),
        .init(id: NSUUID().uuidString, username: "digitalnomad", profileImage: "digital_nomad_main", fullName: "Bruce Baker", bio: "36 out of 50 states. 126 countries. I'm coming for the globe.", email: "bbaker@gmail.com"),
        .init(id: NSUUID().uuidString, username: "lovelopez", profileImage: "love_lopez_main", fullName: "Lisa Lopez", bio: "GMD Models. Oakland, CA -> Los Angeles, CA", email: "lisalopez@gmail.com"),
        .init(id: NSUUID().uuidString, username: "roller.taylor", profileImage: "roller_taylor_main", fullName: "Stacey Taylor", bio: "Passionately skating.", email: "leo@leodigital.com"),
        .init(id: NSUUID().uuidString, username: "visualsam", profileImage: "visual_sam_main", fullName: "Sam Thompson", bio: "Visual Artist. Digital Paining....", email: "sam@visualsam.com"),
    ]
}
