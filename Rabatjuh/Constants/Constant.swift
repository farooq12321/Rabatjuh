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
        static let invalidPassword = "Please Enter valid password".localized
        
        static let emailNotExist = "The email does not exit".localized
        static let incorrectPassword = "The password you entered is incorrect. Please try again".localized
        
        // MARK: SignUp
        
        static let alertTitle = "Alert!".localized
        static let checkAllField = "Please Fill All Field".localized
        static let emptyName = "Please Fill Name Field".localized
        static let emptyEmail = "Please Fill Email Field".localized
        static let emptySchool = "Please Fill School Field".localized
        static let emptyPassword = "Please Fill Password Field".localized
        static let checkEmailMessage = "Email is not Correct".localized
        static let checkPasswordMessage = "Password should be 8 characters!! 1 upperCase,1 digit and LowerCase".localized
        
        static let chooseImagetitle = "Choose Image".localized
        static let titleCamera = "Camera".localized
        static let titleGallery = "Gallery".localized
        static let titleCancel = "Cancel".localized
        
        static let dontHaveCamera = "You Don't Have Camera".localized
        static let dontHavePicture = "You Don't Have Picture in Gallery".localized
        
        
        
        
    }
    
    
    
    
    
}

