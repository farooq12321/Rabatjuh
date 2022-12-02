//
//  Font.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit
import RSFontSizes


extension UIFont {

    static let heading: UIFont = .font(size: 25.0)
    static let subheading: UIFont = .font(size: 20.0)

    static let labelPrimary: UIFont = .font(size: 17.0)
    static let labelSecondary: UIFont = .font(size: 17.0)
    static let labelPreSecondary: UIFont = .font(size: 15.0)


    static let button: UIFont = .font(size: 17.0)



    static let textfieldPrimary: UIFont = .font(size: 17.0)


//
//
    
//    static func withWeight(_ weight: UIFont.Weight) -> UIFont {
//    var attributes = fontDescriptor.fontAttributes
//    var traits = (attributes[.traits] as? [UIFontDescriptor.TraitKey: Any]) ?? [:]
//
//    traits[.weight] = weight
//
//    attributes[.name] = nil
//    attributes[.traits] = traits
//    attributes[.family] = familyName
//
//    let descriptor = UIFontDescriptor(fontAttributes: attributes)
//
//    return UIFont(descriptor: descriptor, size: pointSize)
//  }
//
//
  static func font(withName name: String = "", size: CGFloat) -> UIFont {
    name.font(
      withWeight: .normal,
      size: PointSize.proportional(to: (.screen6_5Inch, size))
    ) ?? UIFont.systemFont(ofSize: size)
  }


}

