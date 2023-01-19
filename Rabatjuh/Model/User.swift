//
//  User.swift
//  Rabatjuh
//
//  Created by Apple on 19/01/2023.
//

import Foundation
import SwiftyJSON
struct User {
    
    var id: Int = 0
    var full_name: String = ""
    var email: String = ""
    var school_name: String = ""
    var image: String = ""
    var role: String = ""
    var device_token: String = ""
    
}


struct UserModelData {
    var message: String
    var data: [User]
    
    init(data: JSON) {
        self.message = data["message"].stringValue
        self.data = data["data"].arrayValue.map{ _ in (User()) }
        
    }
}

struct LoginCredentials {
    var role: String = "1"
    var email: String = ""
    var password: String = ""
}

