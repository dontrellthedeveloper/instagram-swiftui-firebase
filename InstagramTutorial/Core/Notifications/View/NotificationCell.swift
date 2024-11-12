//
//  NotificationCell.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView(size: .xSmall)
            
            HStack {
                Text("yuki")
                    .font(.subheadline)
                    .fontWeight(.semibold) +
                
                Text(" liked one of your posts")
                    .font(.subheadline) +
                
                Text(" 3w")
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            
            Spacer()
            
            Image("love_lopez_2")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .clipped()
                .padding(.leading, 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
