//
//  Color.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit


extension UIColor {


    
    // MARK: - Generaic
    
    static let background = UIColor(named: "Background")!
    static let dropShadow = UIColor(named: "Drop Shadow")!
    
    static let success = UIColor(named: "Success")!
    static let warning = UIColor(named: "Warning")!
    static let error = UIColor(named: "Error")!
    static let info = UIColor(named: "Info")!
    
    
    
    
    // MARK: - Heading
    
    static let heading = UIColor(named: "Heading")!
    static let subheading = UIColor.HexColor(hexString: "#E0E0E0")
    static let searchbarcolor = UIColor.HexColor(hexString: "#424242")
    static let selectMenuColor = UIColor.HexColor(hexString: "#F5B64D")
    
    
    
        
    // MARK: - Label
    
    static let labelPrimary = UIColor(named: "Label Primary")!
    static let labelSecondary = UIColor(named: "Label Secondary")!
    static let dicountLabelBackground = UIColor.HexColor(hexString: "#C9AA77")
    
    
    
    
    // MARK: - Button
    
    //Primary
    static let buttonPrimaryBackground = UIColor(named: "Button Primary Background")!
    static let buttonPrimaryForeground = UIColor(named: "Button Primary Foreground")!
    
    //Secondary
    //static let buttonSecondaryBackground = UIColor(named: "Button Secondary Background")!
    
    static let buttonSecondaryBackground = UIColor.HexColor(hexString: "#F5B64D")
    static let buttonSecondaryForeground = UIColor(named: "Button Secondary Foreground")!
    static let buttonSecondaryBorder = UIColor(named: "Button Secondary Border")
    
    //Ghost
    static let buttonGhostBackground = UIColor(named: "Button Ghost Background")!
    static let buttonGhostForeground = UIColor(named: "Button Ghost Foreground")!
    
    //Floating
    static let buttonFloatingBackground = UIColor(named: "Button Floating Background")!
    static let buttonFloatingForeground = UIColor(named: "Button Floating Foreground")!
    
    //Link
    static let buttonLinkForeground = UIColor(named: "Button Link Foreground")!
    
    
    
    
    // MARK: - Textfield
    
    static let textfieldText = UIColor(named: "Textfield Text")!
    static let textfieldBackground = UIColor(named: "Textfield Background")!
    static let textfieldBorder = UIColor(named: "Textfield Border")!
    static let textfieldCursorTint = UIColor(named: "Textfield Cursor Tint")!
    static let placeHolder = UIColor.HexColor(hexString: "#99999E")
    
    
    
    //MARK: - Image
    
    static let ImageBackGroundColor = UIColor.HexColor(hexString: "#C3C3C1")
    
    static let bgcolor = UIColor.HexColor(hexString: "#313236")
    
    
    
    //MARK: - Image
    
    static let viewbackgroungColor = UIColor.HexColor(hexString: "#2B2B2D")
    
    
    
    
    
}


    // MARK: - Hex Color
extension UIColor {
    
    static func HexColor(hexString:String) -> UIColor {
    
        
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        return self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
        
        
    }
    
}


