//
//  UserModel.swift
//  TestingProject
//
//  Created by daniel stefanus christiawan on 26/09/22.
//

import Foundation

struct User {
    let name: String
    let email: String
    let phoneNumber: Int
    
    init(name: String, email: String, phoneNumber: Int) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
    }
}
