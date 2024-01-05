//
//  LoginView.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack{
            
            // Header
            HeaderView(title: "To Do List",
                       subTitle: "Get things done",
                       angle: 15,
                       background: .pink)
           
            // Login
            Form{
                
                // Error
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //
                TLButton(title: "Login", background: .blue){
                    // attempt to login
                    viewModel.login()
                }
                
            }
            .offset(y: -50)
            
            // Create account
            VStack{
                Text("New around here?")
                NavigationLink("Create an account",
                               destination: RegisterView())
            }
            .padding(.bottom, 50)
            
            //
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
