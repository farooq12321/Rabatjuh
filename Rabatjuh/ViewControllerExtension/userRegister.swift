//
//  userRegister.swift
//  Rabatjuh
//
//  Created by Apple on 02/01/2023.
//

//import Foundation
//import UIKit
//import SwiftyJSON
//
//struct userRegister
//{
//    var userName: String?
//    var userEmail: String?
//    var userSchool: String?
//    var userImage: UIImage?
//    var userPassword: String?
//    var userConfirmPassword: String?
//
//}
//
//struct userSigup
//{
//
//    var userName: String?
//    var userEmail: String?
//    var userSchool: String?
//    var userImage: String?
//    var userPassword: String?
//    var userConfirmPassword: String?
//
//    init(data: JSON) {
//        self.userName = data["userName"].string!
//        self.userEmail = data["userEmail"].string!
//        self.userSchool = data["userSchool"].string!
//        self.userImage = data["userImage"].string!
//        self.userPassword = data["userPassword"].string!
//        self.userConfirmPassword = data["userConfirmPassword"].string!
//
//}
//}
//
//struct singupModelData {
//    var message: String
//    var data: [userSigup]
//
//    init(data: JSON) {
//        self.message = data["message"].stringValue
//        self.data = data["data"].arrayValue.map{ (userSigup(data: $0)) }
//
//    }
//}
//
//struct RegisterResponse : Decodable {
//
//    let errorMessage: String?
//}
//
//
//struct userSignin : Encodable
//{
//
//    var userEmail: String?
//    var userPassword: String?
//
//
//
//
//}
//
//
//struct userLogin
//{
//
//    var userEmail: String?
//    var userPassword: String?
//
//    init(data: JSON) {
//        self.userEmail = data["userEmail"].string!
//        self.userPassword = data["userPassword"].string!
//
//
//}
//}
//
//
//struct LoginModelData {
//    var message: String
//    var data: [userLogin]
//
//    init(data: JSON) {
//        self.message = data["message"].stringValue
//        self.data = data["data"].arrayValue.map{ (userLogin(data: $0)) }
//
//    }
//}
//
//
//
