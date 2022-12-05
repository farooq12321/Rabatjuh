//
//  CreateMenuViewController.swift
//  Rabatjuh
//
//  Created by Apple on 05/12/2022.
//

import UIKit

class CreateMenuViewController: UIViewController {

    
    
    // MARK: - Body
    
    private lazy var menuImage = UIImageView.UserImage(
        name: AppString.Image.menuImage
    )
    
    private lazy var txtName = UITextField.Primary(
        placeholder: AppString.Textfield.menuName,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtMenu = UITextField.Primary(
        placeholder: AppString.Textfield.chooseMenu,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtPrice = UITextField.Primary(
        placeholder: AppString.Textfield.menuPrice,
        backgroundColor: UIColor.textfieldBackground1
    )
    
    private lazy var txtDiscription = UITextField.Primary(
        placeholder: AppString.Textfield.menuDesciption,
        backgroundColor: UIColor.textfieldBackground1
        
    )
   
    
    
    
    private lazy var bodyStack = UIStackView(
        arrangedSubviews: [txtName,txtMenu,txtPrice,txtDiscription],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
    // MARK: - Footer
  
    
    private lazy var btnCook = UIButton.Primary(
        title: AppString.Button.cook,
        titleColor: UIColor.labelPrimary
      
    )
    
    //MARK:- mainStack
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [UIView.spacer(for:.horizontal),menuImage,UIView.spacer(for:.horizontal),bodyStack,btnCook],
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
private extension CreateMenuViewController {
    func configureViews() {

        view.backgroundColor = .white
        view.addSubview(mainStack)

        
        activateConstrains()
    }
    
    func activateConstrains() {

        mainStack.snp.makeConstraints { make in
            make.top.equalTo(view.layoutMarginsGuide)
            make.left.right.equalTo(view.layoutMarginsGuide)
            
        }
    }
}
   


