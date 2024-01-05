//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Cyril on 03/01/2024.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items views
// Primary tab
class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    // Delete to do list item
    // - Parameter id: item id to delete 
    func delete(itemID: String){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemID)
            .delete()
    }
    
}
