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
    
    private var user:  [User] = []
    
    
    
    private var email = ""
     var name = ""
    private var password = ""
    
    var errorMessage: Observable<String?> = Observable(nil)
    
    func signinCredentials(email: String, password: String) {
        loginCredentials.email = email
        loginCredentials.password = password
    }
    
    
    func login() {
        
        let parameters: Parameters = [
            "role":"1",
            "email": email,
            "password": password,

            ]

        NetworkManager.shared.PostRequest(ApiURl: ServerApi.login, parameters: parameters) { (response) in
            
            let userData = UserModelData(data: response)
            if userData.message.contains(Alert.Message.loginsuccessfully)
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
    
    
    func credentialsInput() -> Status {
      
        if email.isEmpty {
            errorMessage.value = "userEmail field is required."
            return .Failed
        }
        
        if password.isEmpty {
            errorMessage.value = "Password field is required."
            return .Failed
        }
        
        return .Success
    }
}



enum Status {
    case Failed
    case Success
}
