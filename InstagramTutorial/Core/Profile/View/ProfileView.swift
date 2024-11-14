//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/20/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User

    var body: some View {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
                
                // post grid view
                PostGridView(user: user)
                
            }
            .navigationDestination(for: Post.self, destination: { post in
                FeedCell(post: post)
            })
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
