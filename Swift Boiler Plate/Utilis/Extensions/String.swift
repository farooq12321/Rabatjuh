//
//  String.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit


extension String {
    
    var localized: String {
           
        let lang = UserDefaults.standard.getLanguage()

            let path = Bundle.main.path(forResource: lang, ofType: "lproj")
            let bundle = Bundle(path: path!)

            return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
        }
    
    

    
    func isValidEmail() -> Bool {
                let emailRegex = Regex.email
        
              let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
              return predicate.evaluate(with: self)
    }
    

    func isPasswordFormatted() -> Bool {
    
      // one uppercase, one digit, one lower case, 8 characters
        let passwordRegex = Regex.password
      // swiftlint:enable line_length
      let predicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
      return predicate.evaluate(with: self)
    }
    
  
 
  var hasNumbers: Bool {
    rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789")) != nil
  }
  
 

 
}


