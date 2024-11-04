//
//  CreatePasswordView.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 10/22/24.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel


    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 12) {
                Text("Create a password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Your password must be at least 6 characters in length.")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Password", text: $viewModel.password)
                    .textInputAutocapitalization(.never)
                    .modifier(IGTextFieldModifier())
                    .padding(.top)
                
                NavigationLink {
                    CompleteSignUpView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
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
    CreatePasswordView()
        .environmentObject(RegistrationViewModel())
}
