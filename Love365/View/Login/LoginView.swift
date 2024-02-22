//
//  LoginView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

struct LoginView: View {
  @Environment(\.dismiss) var dismiss
  @EnvironmentObject var authViewModel: AuthenticationViewModel
  
  var body: some View {
    VStack(alignment: .leading) {
      Group {
        Text("Login")
          .font(.system(size: 28, weight: .bold))
          .foregroundStyle(.black)
          .padding(.top, 80)
        
        Text("Please log in using the provided service")
          .font(.system(size: 14))
          .foregroundStyle(.gray)
      }
      .padding(.horizontal, 30)
      
      Spacer()
      
      Button {
        authViewModel.send(action: .googleLogin)
      } label: {
        Text("Sign up with Google")
      }.buttonStyle(LoginButtonStyle(textColor: .black, borderColor: .gray))
    }
    .navigationBarBackButtonHidden()
    .toolbar {
        ToolbarItemGroup(placement: .navigationBarLeading) {
            Button {
                dismiss()
            } label: {
                Image("back")
            }
        }
    }
  }
}

#Preview {
  LoginView()
}
