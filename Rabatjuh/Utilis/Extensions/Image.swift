//
//  Image.swift
//  Swift Boiler Plate
//
//  Created by Apple on 29/11/2022.
//

import UIKit
extension UIImageView {
    
    
    static func BackGroundImage (name:String = ""
    ) -> UIImageView
    {
        let imageveiw = UIImageView()
        imageveiw.image = UIImage(named: name)
        imageveiw.contentMode = .scaleAspectFill
        imageveiw.clipsToBounds = true
        return imageveiw
        
        
        
 
    }
}
