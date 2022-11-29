//
//  LoginViewController.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit
import SwiftyJSON
import ToastViewSwift

class LoginViewController: UIViewController {
    
    
    
    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.loginTitle
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.loginSubTitle
    )
    
    private lazy var headerStack = UIStackView(arrangedSubviews: [lblTitle,lblSubTitle], axis: .vertical)
    
    
    
    
    // MARK: - Body
    
    //Form
    private lazy var txtEmail = UITextField.Primary(
        placeholder: AppString.Textfield.email
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
    
    
    
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,bodyStack,btnLogin],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )
    
    
    
    // MARK: - Variables
    
    
    
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViews()
        
    }
    
    
    
    // MARK: - Actions
    
    @objc
    func loginButtonTap(_ sender: Any) {
     
        self.view.endEditing(true)
      
        
    }
    
    
    
    
}



// MARK: - Extension

// Setup Views
private extension LoginViewController {
    func configureViews() {
        view.addSubview(mainStack)
        
        activateConstrains()
    }
    
    func activateConstrains() {
        print("ads")
        mainStack.snp.makeConstraints { make in
            make.left.right.top.equalTo(view.layoutMarginsGuide)
            
        }
    }
}


// Setup ApiCalls
private extension LoginViewController {
    func LoginApi() {
        
    }
}




