//
//  Label.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit

extension UILabel {
    
    
    static func Heading (
        text: String = "",
        font: UIFont = .heading,
        textColor: UIColor = .heading,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
       
        
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        
        return label
    }
    
    static func Subheading (
        text: String = "",
        font: UIFont = .subheading,
        textColor: UIColor = .subheading,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        
        return label
    }
    
    static func Primary (
        text: String = "",
        font: UIFont = .labelPrimary,
        textColor: UIColor = .labelPrimary,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left
//
        
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        return label
    }
    
    
    static func Secondary (
        text: String = "",
        font: UIFont = .labelSecondary,
        textColor: UIColor = .labelSecondary,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        
        return label
    }
    
    static func PreSecondary (
        text: String = "",
        font: UIFont = .labelPreSecondary,
        textColor: UIColor = .buttonPrimaryBackground,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        
        return label
    }
    
    
    
    static func primary (
        text: String = "",
        font: UIFont = .labelPrimary,
        textColor: UIColor = .labelPrimary,
        backgroundColor: UIColor = .clear,
        numberOfLines: Int = 0,
        textAlignment: NSTextAlignment = .left,
        height:CGFloat = 0.0,
        width:CGFloat = 0.0,
        cornerRadius: CGFloat = 0.0,
        maskedCorners: CACornerMask = [.layerMaxXMaxYCorner,.layerMaxXMaxYCorner,.layerMinXMaxYCorner,.layerMaxXMinYCorner]
        
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.numberOfLines = numberOfLines
        label.textAlignment = textAlignment
        label.snp.makeConstraints{ (make) in
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
        
        label.layer.masksToBounds = true
        label.layer.cornerRadius = cornerRadius
        label.layer.maskedCorners = maskedCorners


        return label
    }
    
    
    
}

