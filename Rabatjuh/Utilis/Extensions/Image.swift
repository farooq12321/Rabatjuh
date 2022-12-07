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
        cornerRadius:CGFloat = 0.0
//        backgroundcolor:UIColor = .HexColor(hexString: "")
//        height:CGFloat = CGFloat(),
//        width:CGFloat = CGFloat()
    ) -> UIImageView {
        let imageveiw = UIImageView()
        imageveiw.image = UIImage(named: name)
        imageveiw.contentMode = .scaleAspectFill
        imageveiw.layer.cornerRadius = cornerRadius
        //imageveiw.backgroundColor = backgroundcolor
//        imageveiw.snp.makeConstraints{ (make) in
//            make.height.equalTo(height)
//            make.width.equalTo(width)
//        }
        imageveiw.clipsToBounds = true
        return imageveiw
        
    }
    
//    static func ProfileImage (name:String = ""
//    ) -> UIImageView
//    {
//        let imageveiw = UIImageView()
//        imageveiw.image = UIImage(named: name)
//        imageveiw.contentMode = .scaleAspectFill
//
//        imageveiw.clipsToBounds = true
//        imageveiw.snp.makeConstraints{ (make) in
//            make.height.width.equalTo(100)
//        }
//        return imageveiw
//
//
//
//
//    }
    
//    static func logoImage (name:String = ""
//    ) -> UIImageView
//    {
//        let imageveiw = UIImageView()
//        imageveiw.image = UIImage(named: name)
//        imageveiw.contentMode = .scaleToFill
//        imageveiw.clipsToBounds = true
//        imageveiw.snp.makeConstraints{ (make) in
//            make.height.width.equalTo(200)
//        }
//        return imageveiw
//
//
//
//
//    }
    
//    static func Image (name:String = ""
//    ) -> UIImageView
//    {
//        let imageveiw = UIImageView()
//        imageveiw.image = UIImage(named: name)
//        imageveiw.contentMode = .scaleToFill
//        imageveiw.clipsToBounds = true
////        imageveiw.snp.makeConstraints{ (make) in
////            make.height.equalTo(200)
////        }
////        imageveiw.layer.cornerRadius = 10.0
//        return imageveiw
//
//
//
//
//    }
    
    static func UserImage (name:String = ""
    ) -> UIImageView
    {
        let height = 150.0
        let imageveiw = UIImageView()
        imageveiw.image = UIImage(named: name)
        imageveiw.contentMode = .scaleAspectFill
        imageveiw.layer.cornerRadius = CGFloat(height/2.0)
        imageveiw.clipsToBounds = true
        imageveiw.snp.makeConstraints{ (make) in
            make.height.equalTo(height)
            make.width.equalTo(150)
        }
        return imageveiw
    
}
}
