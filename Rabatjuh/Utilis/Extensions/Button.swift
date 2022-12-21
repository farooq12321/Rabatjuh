//
//  Button.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit

extension UIButton {
    
    static func Primary (
        title: String = "",
        titleColor: UIColor = .buttonPrimaryForeground,
        font: UIFont = .button,
        backgroundColor: UIColor = .buttonPrimaryBackground,
        cornerRadius: CGFloat = UIConstant.Button.cornerRadius,
        height: CGFloat = UIConstant.Button.height,
        target: Any? = nil,
        action: Selector? = nil
    ) -> UIButton {
        let button = UIButton()
       
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        
        button.layer.cornerRadius = cornerRadius
        if let action = action {
          button.addTarget(target, action: action, for: .touchUpInside)
        }
        
        button.snp.makeConstraints { make in
            make.height.equalTo(height)
        }
        
        return button
    }
    
    static func Secondary (
        title: String = "",
        titleColor: UIColor = .buttonPrimaryBackground,
//        backgroundColor: UIColor = .buttonPrimaryBackground,
//        cornerRadius: CGFloat = UIConstant.Button.btnsecondaryCornerRaidus,
//        height:CGFloat = UIConstant.Button.height,
//        width:CGFloat = UIConstant.Button.width,
        imageName: String = "",
        font: UIFont = .button,
        target: Any? = nil,
        action: Selector? = nil
    ) -> UIButton {
        let button = UIButton()
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
//        button.backgroundColor = backgroundColor
//        button.layer.cornerRadius = cornerRadius
        button.setImage(UIImage(named: imageName), for: .normal)
        button.titleLabel?.font = font
        if let action = action {
          button.addTarget(target, action: action, for: .touchUpInside)
        }
//
//        button.snp.makeConstraints { make in
//            make.height.equalTo(height)
//            make.width.equalTo(width)
//        }
      
        return button
    }
    
    
    static func secondary (
        title: String = "",
        titleColor: UIColor = .buttonPrimaryBackground,
        height:CGFloat = UIConstant.Button.height,
        width:CGFloat = UIConstant.Button.width,
        imageName: String = "",
        font: UIFont = .button,
        target: Any? = nil,
        action: Selector? = nil
    ) -> UIButton {
        let button = UIButton()
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setImage(UIImage(named: imageName), for: .normal)
        button.titleLabel?.font = font
        if let action = action {
          button.addTarget(target, action: action, for: .touchUpInside)
        }
        
        button.snp.makeConstraints{ (make) in
            make.width.equalTo(width)
        }
        
        
        let spacing: CGFloat = 10.0
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing);
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0);
        

        return button
    }
    
    
    
    
    
    static func PreSecondary (
        title: String = "",
        titleColor: UIColor = .buttonPrimaryBackground,
        backgroundColor: UIColor = .buttonPrimaryBackground,
        cornerRadius: CGFloat = UIConstant.Button.btnsecondaryCornerRaidus,
        height:CGFloat = UIConstant.Button.height,
        width:CGFloat = UIConstant.Button.width,
        imageName: String = "",
        font: UIFont = .button,
        target: Any? = nil,
        action: Selector? = nil
    ) -> UIButton {
        let button = UIButton()
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.setImage(UIImage(named: imageName), for: .normal)
        button.titleLabel?.font = font
        if let action = action {
          button.addTarget(target, action: action, for: .touchUpInside)
        }
        
        button.snp.makeConstraints { make in
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
      
        return button
    }
    
    
 
    
    
}
