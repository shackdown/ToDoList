//
//  User.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import Foundation


struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
