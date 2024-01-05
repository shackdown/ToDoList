//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
