//
//  UserModel.swift
//  ProfilePage
//
//  Created by hafied on 03/12/24.
//

enum GenderEnum: Int, Codable {
    case female = 0
    case male = 1
}

struct UserModel: Identifiable, Codable {
    var id: String?
    var email: String?
    var phoneNumber: String?
    var gender: GenderEnum?

    init?(document: [String: Any], id: String) {
        self.id = document["uid"] as? String
        self.email = document["email"] as? String
        self.phoneNumber = document["phoneNumber"] as? String
        if let genderValue = document["ge"] as? Int {
            self.gender = GenderEnum(rawValue: genderValue)
        }
    }
}
