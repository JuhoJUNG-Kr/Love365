//
//  AuthenticatedView.swift
//  Love365
//
//  Created by 정주호 on 21/02/2024.
//

import SwiftUI

struct AuthenticatedView: View {
  @StateObject var viewModel: AuthenticationViewModel
  
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
  AuthenticatedView(viewModel: .init())
}
