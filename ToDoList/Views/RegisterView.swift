//
//  RegisterView.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register",
                       subTitle: "Start organizing todos",
                       angle: -15,
                       background: .yellow)
            
            Form{
                
                // Error
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Button
                TLButton(title: "Create Account", background: .green){
                    // attempt to registration
                    viewModel.register()
                }
            }
            .offset(y: -50)

            //
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
