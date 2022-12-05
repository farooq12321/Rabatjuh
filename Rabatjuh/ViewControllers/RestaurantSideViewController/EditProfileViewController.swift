//
//  EditProfileViewController.swift
//  Rabatjuh
//
//  Created by Apple on 05/12/2022.
//

import UIKit

class EditProfileViewController: UIViewController {

    // MARK: - Body
    
    private lazy var profileImage = UIImageView.UserImage(
        name: AppString.Image.profileImage
    )
    
    private lazy var txtName = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantName,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtTagLine = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantTagLine,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtEmail = UITextField.Primary(
        placeholder: AppString.Textfield.email,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtAddress = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantAddress,
        backgroundColor: UIColor.textfieldBackground1
        
    )
    private lazy var txtType = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantType,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    
    
    private lazy var bodyStack = UIStackView(
        arrangedSubviews: [txtName,txtTagLine,txtEmail,txtAddress,txtType],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
    // MARK: - Footer
  
    
    private lazy var btnUpdate = UIButton.Primary(
        title: AppString.Button.update,
        titleColor: UIColor.labelPrimary
      
    )
    
    //MARK:- mainStack
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [profileImage,UIView.spacer(for:.horizontal),bodyStack,btnUpdate],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )
    
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        
    }
    
   

}


// MARK: - Extension

// Setup Views
private extension EditProfileViewController {
    func configureViews() {

        view.backgroundColor = .white
        view.addSubview(mainStack)

        
        activateConstrains()
    }
    
    func activateConstrains() {

        mainStack.snp.makeConstraints { make in
            make.top.equalTo(view.layoutMarginsGuide).offset(40)
            make.left.right.equalTo(view.layoutMarginsGuide)
            
        }
    }
}



// MARK: - Extension


// Setup ApiCalls
private extension LoginViewController {
    func LoginApi() {
        
    }
    
    
    
    
    
    
}
