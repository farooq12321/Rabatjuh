//
//  UserSignupViewModel.swift
//  Rabatjuh
//
//  Created by Apple on 20/01/2023.
//

//import Foundation
//import UIKit
//import Alamofire
//import ToastViewSwift
//
//class UserSignupViewModel {
//
//
//
//    private var registerCredentials = RegisterCredentials() {
//        didSet {
//
//            email = registerCredentials.email
//            full_name = registerCredentials.full_name
//            school_name = registerCredentials.school_name
//            Userimage = registerCredentials.userImage
//            password = registerCredentials.password
//            confirm_password = registerCredentials.confirm_password
//        }
//    }
//
//    private var user:  [User] = []
//
//
//
//    private var email = ""
//    private var full_name = ""
//    private var school_name = ""
//    private var Userimage: UIImage?
//    private var password = ""
//    private var confirm_password = ""
//
//    var errorMessage: Observable<String?> = Observable("")
//
//    func signupCredentials(email: String,name:String,school:String ,image:UIImage,password: String,confirmpassword:String) {
//        registerCredentials.email = email
//        registerCredentials.full_name = name
//        registerCredentials.school_name = school
//        registerCredentials.userImage = image
//        registerCredentials.password = password
//        registerCredentials.confirm_password = confirmpassword
//    }
//
//
//    func signUp()  {
//
//        let parameters: Parameters = [
//            "role":"1",
//            "email": email,
//            "full_name":full_name,
//            "school_name": school_name,
//            "password": password,
//            "confirm_password":confirm_password
//
//            ]
//
//        NetworkManager.shared.PostRequestWithMultipart(ApiURl: ServerApi.register, parameters: parameters,image:registerCredentials.userImage!)  { (response) in
//
//            let userData = UserModelData(data: response)
//            if userData.message.contains(Alert.Message.userRegister)
//            {
//
//                print(response)
//
//                return
//            }
//            if userData.message.contains(Alert.Message.alreadyEmailTaken)
//            {
//                self.errorMessage.value = Alert.Message.alreadyEmailTaken
//                return
//
//            }
//
//            else
//            {
//                print(response)
//            }
//
//
//
//        }
//
//
//    }
//
//
//    func credentialsInput() -> Status {
//
//
//        if email.isEmpty {
//            errorMessage.value = Alert.Message.emptyEmail
//            return .Failed
//        }
//
//        if email.isValidEmail() == false{
//            errorMessage.value = Alert.Message.checkEmailMessage
//            return .Failed
//        }
//
//        if full_name.isEmpty {
//            errorMessage.value = Alert.Message.emptyName
//            return .Failed
//        }
//        if school_name.isEmpty {
//
//            errorMessage.value = Alert.Message.emptySchool
//            return .Failed
//        }
//
//        if password.isEmpty {
//            errorMessage.value = Alert.Message.emptyPassword
//            return .Failed
//        }
//        if confirm_password.isEmpty {
//            errorMessage.value = Alert.Message.emptyConfirmPassword
//            return .Failed
//        }
//
//        if password.isPasswordFormatted() == false{
//            errorMessage.value = Alert.Message.checkPasswordMessage
//            return .Failed
//        }
//        if password != confirm_password {
//            errorMessage.value = Alert.Message.passwordMatch
//            return .Failed
//        }
//
//        return .Success
//    }
//}
//
//
