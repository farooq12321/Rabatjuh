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
        name: "BackGroundImage"
    )
    
    
    
    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.regsiterTitle
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.regsiterSubTitle,
        textColor: UIColor.HexColor(hexString: "#E0E0E0")
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical
        //spacing: UIConstant.TextField.spacing
    )
    
    private lazy var profileimage = UIImageView.Image(
        name: AppString.Image.ProfileImage, cornerRadius:
            UIConstant.Image.cornerRadius
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
        arrangedSubviews: [headerStack,UIView.spacer(for:.horizontal),profileimage,UIView.spacer(for:.horizontal),bodyStack,footerStack],
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
//        footerStack.snp.makeConstraints{ (make) in
//            make.centerX.equalToSuperview()
//            make.top.equalTo(mainStack.snp.bottom)
//        }
    }
}



// MARK: - Extension


// Setup ApiCalls
private extension LoginViewController {
    func LoginApi() {
        
    }
    
    
    
    
    
    
}
