//
//  Image.swift
//  Swift Boiler Plate
//
//  Created by Apple on 29/11/2022.
//

import UIKit
extension UIImageView {
    
    
    static func Image (
        name:String = "",
        cornerRadius:CGFloat = 0.0,
        height:CGFloat = 0.0,
        width:CGFloat = 0.0
    ) -> UIImageView {
        let imageveiw = UIImageView()
        imageveiw.image = UIImage(named: name)
        imageveiw.contentMode = .scaleAspectFill
        imageveiw.layer.cornerRadius = cornerRadius
        imageveiw.clipsToBounds = true
        return imageveiw
        
    }

    static func UserImage (
        name:String = "",
        cornerRadius:CGFloat = 0.0,
        height:CGFloat = 0.0,
        width:CGFloat = 0.0
    ) -> UIImageView
    {
      
        let imageveiw = UIImageView()
        imageveiw.image = UIImage(named: name)
        imageveiw.contentMode = .scaleAspectFill
        imageveiw.layer.cornerRadius = cornerRadius
        imageveiw.clipsToBounds = true
        imageveiw.snp.makeConstraints{ (make) in
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
        
        return imageveiw
    
}
}
