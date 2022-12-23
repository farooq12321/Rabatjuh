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
    
    static func subveiw() -> UIView{
   
            let view = UIView()
            view.layer.cornerRadius = 10
            view.layer.borderWidth = 0.05
            view.backgroundColor = .white
            view.snp.makeConstraints{ (make) in
            make.height.equalTo(60)
            make.width.equalTo(300)
        }
        
            return view
    }
    
    static func veiw(
        borderwidth:CGFloat = 0.0,
        height:CGFloat = 0.0,
        backgroundcolor:UIColor = UIColor.white,
        cornerradius:CGFloat = 0.0
    ) -> UIView{
   
            let view = UIView()
            view.backgroundColor = backgroundcolor
        view.layer.cornerRadius = cornerradius
        view.layer.borderWidth = borderwidth
            view.snp.makeConstraints{ (make) in
            make.height.equalTo(height)

        }
        
            return view
           
               
        
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
