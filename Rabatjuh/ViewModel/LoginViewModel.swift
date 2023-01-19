//
//  LoginViewModel.swift
//  Rabatjuh
//
//  Created by Apple on 16/01/2023.
//

import UIKit
import Alamofire

protocol SignInViewModelDelegate {
    func didReceiveRegisterResponse(signinResponse: RegisterResponse?)
}


struct SignInViewModel
{

    var delegate : SignInViewModelDelegate?

    func Users(userRequest: userSignin)
    {
        let validationResult = SignInValidation().Validate(singinUser: userRequest)
        if(validationResult.success)
        {
            print("success")
            
        }
        self.delegate?.didReceiveRegisterResponse(signinResponse: RegisterResponse(errorMessage: validationResult.error))
        }



}





class ServiceViewModel: NSObject {
    private let user: userLogin
    
    
    
    public init(users: userLogin) {
        self.user = users
    }
    
    
    public var email: String {
        return user.userEmail!
    }
    
    public var password: String {
        return user.userPassword!
    }
    
    
}



