//
//  Constant.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 29/11/2022.
//

import Foundation

struct Alert {
    
    
    struct Title {
        // MARK: Generic
        static let success = "Success".localized
        static let warning = "Warning".localized
        static let error = "Error".localized
        static let failed = "Failed".localized
        static let ok = "Ok".localized
        
    }
 
    
    struct Message {
        // MARK: Login
        static let emailEmpty = "Please Enter email".localized
        static let invalidEmail = "Please Enter valid email".localized
        static let passwordEmpty = "Please Enter password".localized
//        static let invalidPassword = "Please Enter valid password".localized
        
        static let emailNotExist = "The email does not exit".localized
        static let incorrectPassword = "The password you entered is incorrect. Please try again".localized
        static let incorrectEmail = "The selected email is invalid.".localized
        static let invalidPassword = "Invalid password or account doesn't exist".localized
        
        static let loginsuccessfully = "User logged in successfully".localized
        
        // MARK: SignUp
        
        static let alertTitle = "Alert!".localized
        static let checkAllField = "Please Fill All Field".localized
        static let emptyName = "The full name field is required when role is 1".localized
        static let emptyEmail = "The email field is required".localized
        static let emptySchool = "The school name field is required when role is 1".localized
        static let emptyPassword = "The password field is required".localized
        static let checkEmailMessage = "The email is must be valid email address".localized
        static let checkPasswordMessage = "The password must be at least 6 characters".localized
        static let emptyConfirmPassword = "The confirm pasword field is required".localized
        static let passwordMatch = "The confirm password  and password must match".localized
        static let imagefield = "The image must be an image".localized
        static let addSuccesfully = "Added Succesfully".localized
        static let registerSuccesfully = "Register Succesfully".localized
        
        static let chooseImagetitle = "Choose Image".localized
        static let titleCamera = "Camera".localized
        static let titleGallery = "Gallery".localized
        static let titleCancel = "Cancel".localized
        
        static let dontHaveCamera = "You Don't Have Camera".localized
        static let dontHavePicture = "You Don't Have Picture in Gallery".localized
        
        static let userRegister = "user registered successfully".localized
        static let alreadyEmailTaken = "The email has already been taken".localized
        
        
        
        
    }
    
    
    
    
    
}

