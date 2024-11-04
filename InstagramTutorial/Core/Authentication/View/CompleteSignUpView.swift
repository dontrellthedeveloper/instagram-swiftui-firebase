//
//  CompleteSignUpView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/22/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 12) {
                
                Spacer()
                
                Text("Welcome to Instagram, \n \(viewModel.username)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
                Text("Click below to complete registiration and start using Instagram")
                    .font(.footnote)
         
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
       
                
                Button {
                    Task{try await viewModel.createUser() }
                } label: {
                    Text("Complete Sign up")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        }
        
    }
}

#Preview {
    CompleteSignUpView()
        .environmentObject(RegistrationViewModel())
}
