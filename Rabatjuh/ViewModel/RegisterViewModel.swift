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
