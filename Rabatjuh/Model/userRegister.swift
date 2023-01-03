//
//  userRegister.swift
//  Rabatjuh
//
//  Created by Apple on 02/01/2023.
//

import Foundation

struct userRegister : Encodable
{
    var userName: String?
    var userEmail: String?
    var userSchool: String?
    var userPassword: String?
    
}

struct RegisterResponse : Decodable {

    let errorMessage: String?
}
