//
//  View.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//


import UIKit

extension UIView {
    
    
  
    func setRoundBorders(_ cornerRadius: CGFloat = 10.0) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
    }
    
    func addSubviews(subviews: [UIView]) {
      for subview in subviews {
        addSubview(subview)
      }
    }
    
    static func spacer(size: CGFloat = .greatestFiniteMagnitude, for layout: NSLayoutConstraint.Axis = .horizontal) -> UIView {
        let spacer = UIView()
        
        if layout == .horizontal {
            let constraint = spacer.widthAnchor.constraint(equalToConstant: size)
            constraint.priority = .defaultLow
            constraint.isActive = true
        } else if layout == .vertical{
            let constraint = spacer.heightAnchor.constraint(equalToConstant: size)
            constraint.priority = .defaultLow
            constraint.isActive = true
        }
        
        return spacer
    }
    
}
