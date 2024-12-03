//
//  ListUsersView.swift
//  ProfilePage
//
//  Created by hafied on 04/12/24.
//

import SwiftUI

struct ListUsersView: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("uid").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Email").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Phone Number").frame(maxWidth: .infinity, alignment: .leading)
                    Text("Gender").frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .background(Color.gray.opacity(0.2))

                List(viewModel.users) { user in
                    HStack {
                        Text(user.id ?? "uid")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(user.email ?? "No Email")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(user.phoneNumber ?? "No Phone Number")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(user.gender == .male ? "Male" : "Female")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("List Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}

#Preview {
    ListUsersView()
}
