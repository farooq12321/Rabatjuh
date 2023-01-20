//
//  RegisterValidation.swift
//  Rabatjuh
//
//  Created by Apple on 02/01/2023.
//

//import UIKit
//import Alamofire
//
//struct RegisterValidation {
//
//    func Validate(registerUser: userRegister) -> ValidationResult
//    {
//        
//        
//        if (registerUser.userEmail!.isEmpty)
//        {
//            return ValidationResult(success: false, error: Alert.Message.emptyEmail)
//        }
//        if (registerUser.userEmail?.isValidEmail() == false)
//        {
//          return ValidationResult(success: false, error: Alert.Message.checkEmailMessage)
//        }
//        if(registerUser.userName!.isEmpty)
//        {
//            return ValidationResult(success: false, error: Alert.Message.emptyName)
//        }
//        
//        if (registerUser.userSchool!.isEmpty)
//        {
//            return ValidationResult(success: false, error: Alert.Message.emptySchool)
//        }
//        
//
//        if(registerUser.userPassword!.isEmpty)
//        {
//            return ValidationResult(success: false, error: Alert.Message.emptyPassword)
//        }
//        
//        
//        if(registerUser.userConfirmPassword!.isEmpty)
//        {
//            return ValidationResult(success: false, error: Alert.Message.emptyConfirmPassword)
//        }
//        
//        if (registerUser.userPassword?.isPasswordFormatted() == false)
//        {
//           return ValidationResult(success: false, error: Alert.Message.checkPasswordMessage)
//        }
//        
//        
////        if(registerUser.userPassword != registerUser.userConfirmPassword)
////        {
////            return ValidationResult(success: false, error: Alert.Message.passwordMatch)
////
////  
////        }
//        
////        let parameters: Parameters = [
////            "role":"1",
////            "email": registerUser.userEmail!,
////            "full_name":registerUser.userName!,
////            "school_name": registerUser.userSchool!,
////            "password": registerUser.userPassword!,
////            "confirm_password":registerUser.userConfirmPassword!
////
////
////                   ]
////
////        NetworkManager.shared.PostRequestWithMultipart(ApiURl: ServerApi.register, parameters: parameters, image: registerUser.userImage!) { response in
////
////        let signModelData = singupModelData(data: response)
//        
//      return ValidationResult(success: true, error: nil)
//    }
//
//}
