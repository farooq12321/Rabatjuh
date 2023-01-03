//
//  RegisterValidation.swift
//  Rabatjuh
//
//  Created by Apple on 02/01/2023.
//

import UIKit

struct RegisterValidation {

    func Validate(registerUser: userRegister) -> ValidationResult
    {
        if(registerUser.userName!.isEmpty)
        {
            return ValidationResult(success: false, error: Alert.Message.emptyName)
        }
        
        if (registerUser.userEmail!.isEmpty)
        {
            return ValidationResult(success: false, error: Alert.Message.emptyEmail)
        }
        
        if (registerUser.userSchool!.isEmpty)
        {
            return ValidationResult(success: false, error: Alert.Message.emptySchool)
        }

        if(registerUser.userPassword!.isEmpty)
        {
            return ValidationResult(success: false, error: Alert.Message.emptyPassword)
        }
        
        if (registerUser.userEmail?.isValidEmail() == false)
        {
          return ValidationResult(success: false, error: Alert.Message.checkEmailMessage)
        }
        
        if (registerUser.userPassword?.isPasswordFormatted() == false)
        {
           return ValidationResult(success: false, error: Alert.Message.checkPasswordMessage)
        }
      return ValidationResult(success: true, error: nil)
    }

}
