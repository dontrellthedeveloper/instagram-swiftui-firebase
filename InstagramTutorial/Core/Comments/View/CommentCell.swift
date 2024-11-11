//
//  CommentCell.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/10/24.
//

import SwiftUI

struct CommentCell: View {
    private var user: User {
        return User.MOCK_USERS[0]
    }
    
    var body: some View {
        HStack {
            CircularProfileImageView(user: user, size: .xSmall)
            
            VStack(alignment: .leading) {
                HStack(spacing: 2) {
                    Text(user.username)
                        .fontWeight(.semibold)
                    
                    Text("6d")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                Text("How's the back of my car look?")
            }
            .font(.caption)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    CommentCell()
}
