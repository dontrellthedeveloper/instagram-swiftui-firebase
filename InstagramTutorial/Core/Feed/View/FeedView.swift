//
//  FeedView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/21/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()

    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.posts) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("Instagram_logo_black")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
            

        }
    }
}

#Preview {
    FeedView()
}
