//
//  UserDefaults.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//


import UIKit

extension UserDefaults{

 
    
    //save Name
      func setLanguage(language: String){
          set(language, forKey: UserDefaultsKeys.language.rawValue)
          //synchronize()
      }
      
      //Retrieve Name
      func getLanguage() -> String{
          return UserDefaults.standard.string(forKey: UserDefaultsKeys.language.rawValue) ?? "en"
      }
    
    

}

    enum UserDefaultsKeys : String {
        case language
    }
