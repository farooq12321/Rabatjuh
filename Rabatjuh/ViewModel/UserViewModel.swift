//
//  SignInViewModel.swift
//  Rabatjuh
//
//  Created by Apple on 19/01/2023.
//

import Foundation
import UIKit
import Alamofire
import ToastViewSwift

class UserViewModel {
    
    
    
    private var loginCredentials = LoginCredentials() {
        didSet {
            email = loginCredentials.email
            password = loginCredentials.password
        }
    }
    
    private var registerCredentials = RegisterCredentials() {
        didSet {
            
            email = registerCredentials.email
            full_name = registerCredentials.full_name
            school_name = registerCredentials.school_name
            Userimage = registerCredentials.userImage
            password = registerCredentials.password
            confirm_password = registerCredentials.confirm_password
        }
    }
    
    private var user:  [User] = []
    
    
    
    private var email = ""
     var name = ""
    private var password = ""
    private var full_name = ""
    private var school_name = ""
    private var Userimage: UIImage?
    private var confirm_password = ""
    
    var errorMessage: Observable<String?> = Observable("")
    
    func signinCredentials(email: String, password: String) {
        loginCredentials.email = email
        loginCredentials.password = password
    }
    
    func signupCredentials(email: String,name:String,school:String ,image:UIImage,password: String,confirmpassword:String) {
        registerCredentials.email = email
        registerCredentials.full_name = name
        registerCredentials.school_name = school
        registerCredentials.userImage = image
        registerCredentials.password = password
        registerCredentials.confirm_password = confirmpassword
    }
    
    
    func login() {
        
        let parameters: Parameters = [
            "role":"1",
            "email": email,
            "password": password,

            ]

        NetworkManager.shared.PostRequest(ApiURl: ServerApi.login, parameters: parameters)  { (response) in
            
           let userData = UserModelData(data: response)
            if userData.message.contains(Alert.Message.loginsuccessfully)
            {
                
                print(response)
                
                return
            }
    
            else
            {
                print(response)
                return
            }

        }
}
    
    func credentialsInput() -> Status {
        
        
        if email.isEmpty {
            errorMessage.value = Alert.Message.emptyEmail
            return .Failed
        }
        
        if email.isValidEmail() == false{
            errorMessage.value = Alert.Message.checkEmailMessage
            return .Failed
        }
  
        
        if password.isEmpty {
            errorMessage.value = Alert.Message.emptyPassword
            return .Failed
        }
        return .Success
    }
    
    
    
    func signUp()  {
        
        let parameters: Parameters = [
            "role":"1",
            "email": email,
            "full_name":full_name,
            "school_name": school_name,
            "password": password,
            "confirm_password":confirm_password

            ]

        NetworkManager.shared.PostRequestWithMultipart(ApiURl: ServerApi.register, parameters: parameters,image:registerCredentials.userImage!) { (response) in

            let userData = UserModelData(data: response)

            if userData.message.contains(Alert.Message.userRegister)
            {
                
                print(response)
                
                return
            }
    
            else
            {
                print(response)
            }

        }
   
    }

    func credentialsSignupInput() -> Status {
        
                if email.isEmpty {
                    errorMessage.value = Alert.Message.emptyEmail
                    return .Failed
                }
        
                if email.isValidEmail() == false{
                    errorMessage.value = Alert.Message.checkEmailMessage
                    return .Failed
                }
        
                if full_name.isEmpty {
                    errorMessage.value = Alert.Message.emptyName
                    return .Failed
                }
                if school_name.isEmpty {
        
                    errorMessage.value = Alert.Message.emptySchool
                    return .Failed
                }
        
                if password.isEmpty {
                    errorMessage.value = Alert.Message.emptyPassword
                    return .Failed
                }
                if confirm_password.isEmpty {
                    errorMessage.value = Alert.Message.emptyConfirmPassword
                    return .Failed
                }
        
                if password.isPasswordFormatted() == false{
                    errorMessage.value = Alert.Message.checkPasswordMessage
                    return .Failed
                }
                if password != confirm_password {
                    errorMessage.value = Alert.Message.passwordMatch
                    return .Failed
                }
        
                return .Success
            }
}



