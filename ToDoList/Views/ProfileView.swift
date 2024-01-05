//
//  ProfileView.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModelView()
    
    var body: some View {
        NavigationView {
            VStack{
                if let user = viewModel.user{
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View{
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // info, name, email, member since
        VStack(alignment: .leading){
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }.padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
            }.padding()
            HStack{
                Text("Member since: ")
                    .bold()
                Text(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))
            }.padding()
        }.padding()
        
        // Sign out
        Button("Log Out"){
            viewModel.logOut()
        }.tint(.red)
    }
}

#Preview {
    ProfileView()
}
