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
        
    }
 
    
    struct Message {
        // MARK: Login
        static let emailEmpty = "Please Enter email".localized
        static let invalidEmail = "Please Enter valid email".localized
        static let passwordEmpty = "Please Enter password".localized
        static let invalidPassword = "Please Enter valid password".localized
        
        static let emailNotExist = "The email does not exit".localized
        static let incorrectPassword = "The password you entered is incorrect. Please try again".localized
        
        
        
    }
    
}

