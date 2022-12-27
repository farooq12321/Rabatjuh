//
//  UIConstants.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import Foundation
import UIKit

struct UIConstant {
    
  enum Default {
      static let margin: CGFloat = 16.0
      static let spacing: CGFloat = 25.0
      static let leftmargin: CGFloat = 16.0
      static let rightmargin:CGFloat = -16.0
    static let marginleft: CGFloat = 30.0
    static let marginright: CGFloat = -30.0
    
  }
    
  
  enum Button {
    static let cornerRadius: CGFloat = 10.0
    static let height: CGFloat = 50.0
    static let width:CGFloat = 50.0
    static let btnsecondaryCornerRaidus: CGFloat = height/2.0
    static let btnsecondayHeight:CGFloat = 60.0
    static let btnPresecondayCornerRaidus:CGFloat = 0.0
  }
    
    enum Image {
      static let cornerRadius: CGFloat = 10.0
      static let userImageHeight: CGFloat = 50.0
      static let userImageWidth: CGFloat = 50.0
      static let profileImageHeight: CGFloat = 50.0
      static let profileImageWidth: CGFloat = 50.0
        
    }
  
  enum TextField {
    static let height: CGFloat = 45.0
    static let cornerRadius: CGFloat = 10.0
    static let spacing: CGFloat = 15
  }
    
    enum stackView {
        static let spacing: CGFloat = 2.0
       
    }
    
    enum veiw {
        static let height:CGFloat = 80.0
        static let cornerradius:CGFloat = 15.0
        static let viewheight:CGFloat = 30.0
        static let viewhieght: CGFloat = 8.0
        static let viewCornerRadius:CGFloat = 4.0
        
    }
    
    enum image {
        static let profileimageheight:CGFloat = 120
        static let profileimagewidth:CGFloat = 120
        static let profileimageCornerRadius:CGFloat = profileimageheight/2.0
        
        static let height:CGFloat = 50
        static let width:CGFloat = 50
        static let CornerRaidus: CGFloat = height/2.0
        static let cornerradius:CGFloat = 60.0
    }
    enum Label {
        static let labelHeight: CGFloat = 40
        static let labelWidth: CGFloat = 100
        static let priceLabelHeight: CGFloat = 25.0
        static let pricelabelWidth: CGFloat = 50.0
        static let maskedCorner: CACornerMask = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        static let Corner: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner,.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        
    }
    

}
