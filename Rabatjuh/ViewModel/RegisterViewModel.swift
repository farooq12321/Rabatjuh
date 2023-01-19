//
//  RegisterViewModel.swift
//  Rabatjuh
//
//  Created by Apple on 02/01/2023.
//

import UIKit

protocol RegisterViewModelDelegate {
    func didReceiveRegisterResponse(registerResponse: RegisterResponse?)
}


struct RegisterViewModel
{

    var delegate : RegisterViewModelDelegate?

    func Users(userRequest: userRegister)
    {
        let validationResult = RegisterValidation().Validate(registerUser: userRequest)
        if(validationResult.success)
        {
            print("success")
            
        }
        self.delegate?.didReceiveRegisterResponse(registerResponse: RegisterResponse(errorMessage: validationResult.error))
        }



}

class SignupViewModel: NSObject {
    private let user: userSigup
    
    
    
    public init(users: userSigup) {
        self.user = users
    }
    
    public var name: String {
        return user.userName!
    }
    

    
    public var email: String {
        return user.userEmail!
    }
    
    public var school: String {
        return user.userSchool!
    }
    
    public var image: String {
        return user.userImage!
    }
    
    
    public var password: String {
        return user.userPassword!
    }
    public var confirmpassword: String {
        return user.userConfirmPassword!
    }
    
    
    
}

