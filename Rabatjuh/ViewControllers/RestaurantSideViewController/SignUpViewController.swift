//
//  SignUpViewController.swift
//  Rabatjuh
//
//  Created by Apple on 05/12/2022.
//

import UIKit

class SignUpViewController: UIViewController {
    // MARK: - Background
    private lazy var backgroundImage = UIImageView.Image(
        name: "BackGroundImage"
    )
    
    
    
    // MARK: - Header
    
    private lazy var profileImage = UIImageView.Image(
        name: AppString.Image.profileImage

    )
    
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.regsiterTitle
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.regsiterSubTitle,
        textColor: UIColor.subheadingcolor
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical
        //spacing: UIConstant.TextField.spacing
    )
    
    // MARK: - Body

    //Form
    private lazy var txtName = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantName,
        backgroundColor: UIColor.textfieldBackGroundColor
    )
    
    private lazy var txtTagLine = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantTagLine,
        backgroundColor: UIColor.textfieldBackGroundColor
    )
    
    private lazy var txtEmail = UITextField.Primary(
        placeholder: AppString.Textfield.email,
        backgroundColor: UIColor.textfieldBackGroundColor
    )
    
    private lazy var txtType = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantType,
        backgroundColor: UIColor.textfieldBackGroundColor
    )
    
    private lazy var txtAddress = UITextField.Primary(
        placeholder: AppString.Textfield.restaurantAddress,
        backgroundColor: UIColor.textfieldBackGroundColor
    )
    
    private lazy var txtPassword = UITextField.Primary(
        placeholder: AppString.Textfield.password,
        backgroundColor: UIColor.textfieldBackGroundColor,
        isPassword: true
    )
    
    
    
    private lazy var bodyStack = UIStackView(
        arrangedSubviews: [txtName,txtTagLine,txtEmail,txtType,txtAddress,txtPassword],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
  
    
    
    // MARK: - Footer
  
    
    private lazy var btnSignUp = UIButton.Primary(
        title: AppString.Button.signup
//        target: self,
//        action: #selector(loginButtonTap)
    )
    
    private lazy var lblAlready = UILabel.Secondary(
        text: AppString.Label.alreadyHaveAnAccount,
        textColor: UIColor.heading
    )
    
    private lazy var btnLogin = UIButton.Secondary(
        title: AppString.Button.login
//        target: self,
//        action: #selector(loginButtonTap)
    )
    
    
    
    
    private lazy var footer1 = UIStackView(
        arrangedSubviews: [UIView.spacer(for:.horizontal),lblAlready,btnLogin,UIView.spacer(for:.horizontal)],
         axis: .horizontal,
//        spacing: UIConstant.TextField.spacing,
//        distribution: .equalSpacing
         alignment: .center,
         distribution: .fillEqually
       
    )
    
    
    
    private lazy var footerStack = UIStackView(
        arrangedSubviews: [btnSignUp,footer1],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
       
    )
    
    
    
    
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,profileImage,bodyStack,footerStack],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )
    
    
    
    // MARK: - Variables
    
    
    
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        
    }
    

    // MARK: - Actions
    
//    @objc
//    func loginButtonTap(_ sender: Any) {
//
//        let vc = LoginViewController()
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true,completion: nil)
//        self.view.endEditing(true)
//
//    }
    
    
    
}




// MARK: - Extension

// Setup Views
private extension SignUpViewController {
    func configureViews() {
        
        view.addSubview(backgroundImage)
        view.addSubview(mainStack)
//        view.addSubview(footerStack)
        
        activateConstrains()
    }
    
    func activateConstrains() {
        backgroundImage.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
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
