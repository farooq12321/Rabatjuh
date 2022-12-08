//
//  LoginViewController.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit
import SwiftyJSON

class LoginViewController: UIViewController {
    
    
    // MARK: - Background
    private lazy var backgroundImage = UIImageView.Image(
        name:AppString.Image.backgroundImage
    )
    
    
    
    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.loginTitle,
        backgroundColor: .clear
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.loginSubTitle,
        textColor: UIColor.subheadingcolor
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical
    )
    
    
    
    
    // MARK: - Body
    
    //Form
    private lazy var txtEmail = UITextField.Primary(
       placeholder: AppString.Textfield.email
//        textColor: UIColor.subheading
    )
    
    private lazy var txtPassword = UITextField.Primary(
        placeholder: AppString.Textfield.password,
        isPassword: true
    )
    
    private lazy var bodyStack = UIStackView(
        arrangedSubviews: [txtEmail,txtPassword],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
    
    
    
    // MARK: - Footer
    
    private lazy var btnLogin = UIButton.Primary(
        title: AppString.Button.login,
        target: self,
        action: #selector(loginButtonTap)
    )
    
    
    
    private lazy var lbldontHaveAnAccount = UILabel.Secondary(
        text: AppString.Label.dontHaveAnAccount,
        textColor:UIColor.heading
    )
    
    private lazy var btnSignup = UIButton.Secondary(
        title: AppString.Button.signup,
        target: self,
        action: #selector(signupButtonTap)
    )
    
    
    private lazy var footer1 = UIStackView(
        arrangedSubviews: [UIView.spacer(for:.horizontal),lbldontHaveAnAccount,btnSignup,UIView.spacer(for:.horizontal)],
        axis: .horizontal,
        distribution: .fillEqually
        
       
    )
    
    
    
    private lazy var footerStack = UIStackView(
        arrangedSubviews: [btnLogin,footer1],
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
        let vc = HomeViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true,completion: nil)
       
       self.view.endEditing(true)
    
}


   
    
    @objc private func signupButtonTap(){
        let vc = RegisterViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true,completion: nil)
       
       self.view.endEditing(true)
      
    }
    
    
    
    
}



// MARK: - Extension

// Setup Views
private extension LoginViewController {
    func configureViews() {
        
        view.addSubview(backgroundImage)
        view.addSubview(mainStack)
        
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



