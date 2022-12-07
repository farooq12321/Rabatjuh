//
//  RegisterViewController.swift
//  Rabatjuh
//
//  Created by Apple on 29/11/2022.
//

import UIKit

class RegisterViewController: UIViewController {

    // Mark: - backGroundImage
    // MARK: - Background
    private lazy var backgroundImage = UIImageView.Image(
        name: AppString.Image.backgroundImage
    )
    
    
    
    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.regsiterTitle
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.regsiterSubTitle,
        textColor: UIColor.subheadingcolor
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical
    )
    
    private lazy var profileimage = UIImageView.UserImage(
        name: AppString.Image.ProfileImage
    )
    
    private lazy var btnPlus = UIButton.Secondary(
        imageName:AppString.Button.plus
        )
    
    // MARK: - Body

    //Form
    private lazy var txtName = UITextField.Primary(
        placeholder: AppString.Textfield.registerName
    )
    
    private lazy var txtEmail = UITextField.Primary(
        placeholder: AppString.Textfield.registeremail
    )
    
    private lazy var txtSchool = UITextField.Primary(
        placeholder: AppString.Textfield.registerSchool
    )
    
    private lazy var txtPassword = UITextField.Primary(
        placeholder: AppString.Textfield.registerpassword,
        isPassword: true
    )
    
    
    
    private lazy var bodyStack = UIStackView(
        arrangedSubviews: [txtName,txtEmail,txtSchool,txtPassword],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
  
    
    
    // MARK: - Footer
  
    
    private lazy var btnSignUp = UIButton.Primary(
        title: AppString.Button.signup,
        target: self,
        action: #selector(loginButtonTap)
    )
    
    private lazy var lblAlready = UILabel.Secondary(
        text: AppString.Label.alreadyHaveAnAccount,
        textColor: UIColor.heading
    )
    
    private lazy var btnLogin = UIButton.Secondary(
        title: AppString.Button.login,
        target: self,
        action: #selector(loginButtonTap)
    )
    
    
    
    
    private lazy var footer1 = UIStackView(
        arrangedSubviews: [UIView.spacer(for:.horizontal),lblAlready,btnLogin,UIView.spacer(for:.horizontal)],
         axis: .horizontal,
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
        arrangedSubviews: [headerStack,bodyStack,footerStack],
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
    
    @objc
    func loginButtonTap(_ sender: Any) {
     
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true,completion: nil)
        self.view.endEditing(true)
      
    }
    
    
    
}




// MARK: - Extension

// Setup Views
private extension RegisterViewController {
    func configureViews() {
        
        view.addSubview(backgroundImage)
        view.addSubview(mainStack)
        view.addSubview(profileimage)
        view.addSubview(btnPlus)
        
        
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
        profileimage.snp.makeConstraints{ (make) in
            make.centerX.equalTo(backgroundImage)
            make.top.equalTo(headerStack.snp.bottom).offset(20)
            make.bottom.equalTo(bodyStack.snp.top).offset(-20)
        }
        btnPlus.snp.makeConstraints{ (make) in
            make.left.equalTo(profileimage.snp.right).offset(-20)
            make.top.equalTo(profileimage.snp.bottom).offset(-50)
        }
    }
}



// MARK: - Extension


// Setup ApiCalls
private extension LoginViewController {
    func LoginApi() {
        
    }
    
    
    
    
    
    
}
