//
//  SearchView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/21/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach (User.MOCK_USERS) {user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImage ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullName {
                                        Text(fullname)
                                    }
                                    
                                    
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
