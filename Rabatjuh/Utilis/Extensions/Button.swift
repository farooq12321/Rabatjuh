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
      
        return button
    }
    
    
 
    
    
}
