//
//  LoginViewController.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit
import SwiftyJSON
import Alamofire

class LoginViewController: UIViewController {
    
    
    var userViewModel = UserViewModel()
    

    // MARK: - Background
    private lazy var backgroundImage = UIImageView.Image(
        name:AppString.Image.backImage
    )
    
    private lazy var bgImage = UIImageView.Image(
        name: AppString.Image.bgImage
    )

    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.loginTitle,
        backgroundColor: .clear
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.loginSubTitle,
        textColor: UIColor.subheading
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical
    )

    // MARK: - Body
    
    //Form
    var txtEmail = UITextField.Primary(
       placeholder: AppString.Textfield.email
    )
    
    var txtPassword = UITextField.Primary(
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
        textColor:UIColor.heading,
        numberOfLines: 1,
        textAlignment: .left
        
    )
    
    private lazy var btnSignup = UIButton.PreSecondary(
        title: AppString.Button.signup,
        backgroundColor: .clear,
        cornerRadius: UIConstant.Button.btnPresecondayCornerRaidus,
        width: UIConstant.Button.btnsecondayHeight,
        target: self,
        action: #selector(signupButtonTap)
    )

    private lazy var footer1 = UIStackView(
        arrangedSubviews: [lbldontHaveAnAccount,btnSignup],
        axis: .horizontal,
        alignment: .fill,
        distribution: .fill
    )

    // MARK: - MainStack
 
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,bodyStack,btnLogin],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )

    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
      
        
    }
    
   
    
    
    
    
    
    // MARK: - Actions
    
    @objc
    func loginButtonTap(_ sender: Any) {
        
        
//
        userViewModel.signinCredentials(email: txtEmail.text!, password: txtPassword.text!)

                switch userViewModel.credentialsInput() {

                case .Success:
                    login()
                case .Failed:
                    showToast(message: userViewModel.errorMessage.value!, type: .warning)
                    
                    return
                }
            }




        func login() {
            userViewModel.login()
            print(userViewModel.name)
            

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
        
        navigationController?.navigationBar.isHidden = true
        view.addSubview(backgroundImage)
        view.addSubview(bgImage)
        view.addSubview(mainStack)
        view.addSubview(footer1)
        activateConstrains()
    }
    
    func activateConstrains() {
       
        backgroundImage.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        bgImage.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
        }    
        
        mainStack.snp.makeConstraints { make in
            make.top.equalTo(view.layoutMarginsGuide).offset(40)
            make.left.right.equalTo(view.layoutMarginsGuide)
            
        }
        
        footer1.snp.makeConstraints{ (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(mainStack.snp.bottom)
        }
    }
}



