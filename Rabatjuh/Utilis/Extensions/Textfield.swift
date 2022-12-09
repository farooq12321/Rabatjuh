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
        
//        textfiled.leftViewMode = UITextField.ViewMode.always
//        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
//        let image = UIImage(named: "heartImage")
//        imageView.image = image
//        textfiled.leftView = imageView
        
        
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
    
    
    
    
    
    static func search (
        placeholder: String,
        font: UIFont = .textfieldPrimary,
        textColor: UIColor = .labelPrimary,
        backgroundColor: UIColor = .heading,
        tintColor: UIColor = .textfieldCursorTint,
        borderStyle: BorderStyle = .roundedRect,
        cornerRadius: CGFloat = UIConstant.TextField.cornerRadius,
        height: CGFloat = UIConstant.TextField.height,
        isPassword: Bool = false
        
    ) -> UITextField {
        let textfiled = UITextField()
        textfiled.textColor = textColor
        textfiled.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        textfiled.layer.borderColor = UIColor.textfieldBorder.cgColor
        textfiled.layer.borderWidth = 0.7
        textfiled.layer.cornerRadius = cornerRadius
        textfiled.backgroundColor = backgroundColor
        
        textfiled.leftViewMode = UITextField.ViewMode.always
        let contentview = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
        
        let imageicon = UIImageView()
        
        contentview.addSubview(imageicon)
        
        imageicon.image = UIImage(named: "Seach")

        imageicon.frame = CGRect(x: 10, y: -1, width: 20, height: 20)
        textfiled.leftView = contentview
//        imageView.frame = CGRect(x: 10, y: 0, width: 20, height: 20)
        textfiled.leftViewMode = .always
        textfiled.clearButtonMode = .whileEditing
        
        
        
        
        textfiled.tintColor = tintColor
        textfiled.borderStyle = borderStyle
        textfiled.clearsOnBeginEditing = false
        textfiled.clearsOnInsertion = false
       
        textfiled.snp.makeConstraints { make in
            make.height.equalTo(height)
        }
        return textfiled
    }
    
    
}
