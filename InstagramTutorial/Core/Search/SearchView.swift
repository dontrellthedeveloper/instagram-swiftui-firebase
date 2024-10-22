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
                    ForEach (0...15, id: \.self) {user in
                        HStack {
                            Image("digital_leo_main")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("digital_leo")
                                    .fontWeight(.semibold)
                                
                                Text("Leo Chriss")
                                
                            }
                            .font(.footnote)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
