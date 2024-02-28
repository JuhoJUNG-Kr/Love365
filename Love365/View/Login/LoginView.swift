//
//  LoginView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI
import AuthenticationServices

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
      
      SignInWithAppleButton { request in
        authViewModel.send(action: .appleLogin(request))
      } onCompletion: { result in
        authViewModel.send(action: .appleLoginCompletion(result))
      }
      .frame(height: 40)
      .padding(.horizontal, 15)
      .clipShape(RoundedRectangle(cornerRadius: 5))
      
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
    .overlay {
      if authViewModel.isLoading {
        ProgressView()
      }
    }
  }
}

#Preview {
  LoginView()
}
