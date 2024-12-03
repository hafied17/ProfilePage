//
//  ProfilePageApp.swift
//  ProfilePage
//
//  Created by hafied on 03/12/24.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

@main
struct ProfilePageApp: App {
    init() {
        FirebaseApp.configure()
        print("Configure firebase!")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
