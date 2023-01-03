//
//  RegisterVCExtension.swift
//  Rabatjuh
//
//  Created by Apple on 03/01/2023.
//

import Foundation
import UIKit

extension RegisterViewController : RegisterViewModelDelegate
{
    
   
    func didReceiveRegisterResponse(registerResponse: RegisterResponse?){
        
        
        if(registerResponse?.errorMessage == nil)
        {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
            return
        }
        else if (registerResponse?.errorMessage != nil)
        {
            showToast(message: (registerResponse?.errorMessage)!, type: .warning)
      
        }
    }
}
