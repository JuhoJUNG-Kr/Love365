//
//  LoginIntroView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

struct LoginIntroView: View {
  @State private var isPresentedLoginView: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 20) {
        Spacer()
        
        Text("Welcome!")
          .font(.system(size: 26, weight: .bold))
          .foregroundStyle(.black)
        
        Text("your story starts here")
          .font(.system(size: 14, weight: .semibold))
          .foregroundStyle(.gray)
        
        Spacer()
        
        Button {
          isPresentedLoginView.toggle()
        } label: {
          Text("Login")
        }
        .buttonStyle(LoginButtonStyle(textColor: .pink))
      }
      .navigationDestination(isPresented: $isPresentedLoginView) {
        LoginView()
      }
    }
  }
}

#Preview {
  LoginIntroView()
}
