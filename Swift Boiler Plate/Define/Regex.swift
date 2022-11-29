//
//  Regex.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 29/11/2022.
//

import Foundation

//Regex
struct Regex {
  static var email = "[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@([A-Za-z0-9]([A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9]([A-Za-z0-9-]*[A-Za-z0-9])?"
  static var phone = "^((\\+)|(00))[0-9]{11,14}$"
    
      // one uppercase, one digit, one lower case, 8 characters
  static var password = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8}$"
    
  static var captital = "(?s)[^A-Z]*[A-Z].*"
  static var special = "(?s)[^$@$#!%*?&]*[$@$#!%*?&].*"
  static var hastag = ".*[^A-Za-z0-9].*"
}
