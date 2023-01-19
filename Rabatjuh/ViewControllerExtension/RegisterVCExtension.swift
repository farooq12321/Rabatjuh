//
//  RegisterVCExtension.swift
//  Rabatjuh
//
//  Created by Apple on 03/01/2023.
//

import Foundation
import UIKit
import Alamofire
extension RegisterViewController : RegisterViewModelDelegate
{
    
   
    func didReceiveRegisterResponse(registerResponse: RegisterResponse?){
        
        let parameters: Parameters = [
            "role":"1",
            "email": txtEmail.text!,
            "full_name":txtName.text!,
            "school_name": txtSchool.text!,
            "password": txtPassword.text!,
            "confirm_password":txtConfirmPassword.text!
            
            
                   ]
        
        NetworkManager.shared.PostRequestWithMultipart(ApiURl: ServerApi.register, parameters: parameters, image: profileimage.image!) { response in
            
            
            let signModelData = singupModelData(data: response)
        
        if (registerResponse?.errorMessage != nil)
        {
            self.showToast(message: (registerResponse?.errorMessage)!, type: .warning)
            print(response)
            return
        }
        
            if signModelData.message.contains(Alert.Message.userRegister)
            {
                print(response)
                let vc = LoginViewController()
                let nvc = UINavigationController(rootViewController: vc)
                 nvc.modalPresentationStyle = .fullScreen
                self.present(nvc, animated: true,completion: nil)

                return
                
            }

            if signModelData.message.contains(Alert.Message.alreadyEmailTaken)
            {
                self.showToast(message: Alert.Message.alreadyEmailTaken, type: .warning)
            
            print(response)
            return
            }
        
            if(self.txtPassword.text != self.txtConfirmPassword.text)
            {
                self.showToast(message: Alert.Message.passwordMatch, type: .warning)
                print(response)
                return
            }
            
            if signModelData.message.contains(Alert.Message.imagefield)
            {
                self.showToast(message: Alert.Message.imagefield, type: .warning)
                print(response)
                return
            
            }
       else
            {
                print(response)
                return
            }
            
        }
    }
}

