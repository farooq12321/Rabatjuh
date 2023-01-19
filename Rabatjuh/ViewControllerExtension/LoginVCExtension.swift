//
//  LoginVCExtension.swift
//  Rabatjuh
//
//  Created by Apple on 16/01/2023.
//

import UIKit
import Alamofire

extension LoginViewController : SignInViewModelDelegate
{
    
   
    func didReceiveRegisterResponse(signinResponse: RegisterResponse?){
        
        
        let parameters: Parameters = [
            "role":"1",
            "email": txtEmail.text!,
            "password": txtPassword.text!,
        
                   ]

        NetworkManager.shared.PostRequest(ApiURl: ServerApi.login, parameters: parameters) { (response) in


            
            let loginModelData = LoginModelData(data: response)
            
            if (signinResponse?.errorMessage != nil)
            {
                self.showToast(message: (signinResponse?.errorMessage)!, type: .warning)
                print(response)
                return
            }
            
            if loginModelData.message.contains(Alert.Message.loginsuccessfully)
            {
                print(response)
                let vc = HomeViewController()
                let nvc = UINavigationController(rootViewController: vc)
                 nvc.modalPresentationStyle = .fullScreen
                self.present(nvc, animated: true,completion: nil)
                
             
                return
                
            }
            
            if loginModelData.message.contains(Alert.Message.incorrectEmail)
            {
             self.showToast(message: Alert.Message.incorrectEmail, type: .warning)
                print(response)
                return
            }
            if loginModelData.message.contains(Alert.Message.invalidPassword)
            {
              self.showToast(message: Alert.Message.invalidPassword, type: .warning)
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





