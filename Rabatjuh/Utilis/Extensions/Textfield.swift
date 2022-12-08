//
//  Textfield.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit

extension UITextField {
    
    static func Primary (
        placeholder: String,
        font: UIFont = .textfieldPrimary,
        textColor: UIColor = .heading,
//        textColor: UIColor = .textfieldText,
        //backgroundColor: UIColor = .textfieldBackground,
//        bordercolor : UIColor = .textfieldBorder,
        backgroundColor: UIColor = .clear,
        tintColor: UIColor = .textfieldCursorTint,
        borderStyle: BorderStyle = .roundedRect,
        cornerRadius: CGFloat = UIConstant.TextField.cornerRadius,
        height: CGFloat = UIConstant.TextField.height,
        isPassword: Bool = false
        
    ) -> UITextField {
        let textfiled = UITextField()
      
        
        //textfiled.placeholder = placeholder
        textfiled.textColor = textColor
        
        textfiled.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
//        let txtfiled = UIColor.textfieldBorder
//        textfiled.layer.borderColor = txtfiled.cgColor
        textfiled.layer.borderColor = UIColor.textfieldBorder.cgColor
        textfiled.layer.borderWidth = 0.7
        textfiled.layer.cornerRadius = cornerRadius
        textfiled.backgroundColor = backgroundColor
        textfiled.tintColor = tintColor
        textfiled.borderStyle = borderStyle
        textfiled.isSecureTextEntry = isPassword
        textfiled.clearsOnBeginEditing = false
        textfiled.clearsOnInsertion = false
        if isPassword{
            textfiled.enablePasswordToggle()
        }
        
        textfiled.snp.makeConstraints { make in
            make.height.equalTo(height)
        }
        return textfiled
    }
    
    
    
    
    
    fileprivate func setPasswordToggleImage(_ button: UIButton) {
        if(isSecureTextEntry){
            button.setImage(UIImage(named: "ic_password_visible"), for: .normal)
        }else{
            button.setImage(UIImage(named: "ic_password_invisible"), for: .normal)
        }
    }

    func enablePasswordToggle(){
      
        let button = UIButton(type: .custom)
        setPasswordToggleImage(button)
   
        
        button.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.width.equalTo(30)
        }
        
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
    
          
        button.addTarget(self, action: #selector(self.togglePasswordView), for: .touchUpInside)
        self.rightView = button
        self.rightViewMode = .always
    }
    @IBAction func togglePasswordView(_ sender: Any) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        setPasswordToggleImage(sender as! UIButton)
    }
    
    
}
