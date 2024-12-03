//
//  UsersViewModel.swift
//  ProfilePage
//
//  Created by hafied on 04/12/24.
//

import SwiftUI
import FirebaseFirestore

class UserViewModel: ObservableObject {
    @Published var users: [UserModel] = []
    private var db = Firestore.firestore()

    func fetchUsers() {
        db.collection("USERS").getDocuments { (snapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
                return
            }
            
            self.users = snapshot?.documents.compactMap { document in
                UserModel(document: document.data(), id: document.documentID)
            } ?? []
        }
    }
}
