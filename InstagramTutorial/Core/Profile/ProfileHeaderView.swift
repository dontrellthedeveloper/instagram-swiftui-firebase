//
//  ProfileHeaderView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/24/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImage ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")
                    
                    UserStatView(value: 12, title: "Followers")
                    
                    UserStatView(value: 24, title: "Following")
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 4)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullName {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                
                if let bio = user.bio {
                     Text(bio)
                        .font(.footnote)
                }
                
                Text(user.username)
                
          
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            // action button
            
            Button {
                if user.isCurrentUser {
                    print("Show edit profile")
                } else {
                    print("Follow user")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1))
                
            }
            
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
