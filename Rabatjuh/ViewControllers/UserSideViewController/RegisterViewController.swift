//
//  RegisterViewController.swift
//  Rabatjuh
//
//  Created by Apple on 29/11/2022.
//

import UIKit

class RegisterViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    // Mark: - backGroundImage
    // MARK: - Background
    private lazy var backgroundImage = UIImageView.Image(
        name: AppString.Image.backImage
    )
    private lazy var bgImage = UIImageView.Image(
        name: AppString.Image.bgImage
    )
    
    
    // MARK: - Header
    private lazy var lblTitle = UILabel.Heading(
        text: AppString.Label.regsiterTitle
    )
    
    private lazy var lblSubTitle = UILabel.Subheading(
        text: AppString.Label.regsiterSubTitle,
        textColor: UIColor.subheading
    )
    
    private lazy var headerStack = UIStackView(
        arrangedSubviews: [lblTitle,lblSubTitle],
        axis: .vertical
    )
    
    private lazy var profileimage = UIImageView.UserImage(
        name: AppString.Image.ProfileImage,
        cornerRadius: UIConstant.image.profileimageCornerRadius,
        height:UIConstant.image.profileimageheight,
        width: UIConstant.image.profileimagewidth
    )
   
    
    private lazy var btnImageBrowse = UIButton.Secondary(
        imageName:AppString.Button.plus,
        target: self,
        action: #selector(BrowseButtonType)
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
        action: #selector(SignUpTap)
    )
    
    private lazy var lblAlready = UILabel.Secondary(
        text: AppString.Label.alreadyHaveAnAccount,
        textColor: UIColor.heading,
        numberOfLines: 1,
        textAlignment: .left
    )
    
    private lazy var btnLogin = UIButton.PreSecondary(
        title: AppString.Button.login,
        backgroundColor: .clear,
        cornerRadius: UIConstant.Button.btnPresecondayCornerRaidus,
        width: UIConstant.Button.btnsecondayHeight,
        target: self,
        action: #selector(loginButtonTap)
    )
    
    private lazy var footer1 = UIStackView(
        arrangedSubviews: [lblAlready,btnLogin],
        axis: .horizontal,
        alignment: .fill,
        distribution: .fill
        
       
    )
    
    
    
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,bodyStack,btnSignUp],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )
    
    
    
    // MARK: - Variables
    
    
    
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
 
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        profileimage.image = (info[UIImagePickerController.InfoKey.originalImage] as? UIImage)
        profileimage.image = profileimage.image?.scaledImage(withSize: CGSize(width: UIConstant.image.profileimagewidth, height: UIConstant.image.profileimageheight))
        dismiss(animated: true, completion: nil)
    }
    
   
    
    // MARK: - Actions
    
    
    //MARK: SignUp
    
    @objc
    func SignUpTap(_ sender: Any)
    {
        if txtName.text?.isEmpty == true && txtEmail.text?.isEmpty == true && txtSchool.text?.isEmpty == true && txtPassword.text?.isEmpty == true
        {
           
           let alert = UIAlertController(title: "Alert!", message: "Please Fill All Field", preferredStyle: .alert)
                                   
                        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                       action in
                                      
                                       
                                   }))
                                    
                                   present (alert , animated: true)
 
        }
        
            else if txtName.text?.isEmpty == true
            {
                let alert = UIAlertController(title: "Alert!", message: "Please Fill Name Field", preferredStyle: .alert)
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                        
                                            
                                        }))
                                         
                                        present (alert , animated: true)
            }
            
            
            else if txtEmail.text?.isEmpty == true
            {
                let alert = UIAlertController(title: "Alert!", message: "Please Fill Email Field", preferredStyle: .alert)
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                            
                                        }))
                                         
                                        present (alert , animated: true)
            }
            
            else if txtSchool.text?.isEmpty == true
            {
                let alert = UIAlertController(title: "Alert!", message: "Please Fill School Field", preferredStyle: .alert)
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                            
                                        }))
                                         
                                        present (alert , animated: true)
            }
            
            else if txtPassword.text?.isEmpty == true
            {
                let alert = UIAlertController(title: "Alert!", message: "Please Fill Password Field", preferredStyle: .alert)
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                            
                                        }))
                                         
                                        present (alert , animated: true)
            }
   
            else if ((txtEmail.text?.isValidEmail()) == false)
            {
                let alert = UIAlertController(title: "Alert!", message: "Email is not Correct", preferredStyle: .alert)
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                            
                                        }))
                                         
                                        present (alert , animated: true)
                
            }
            else if ((txtPassword.text?.isPasswordFormatted()) == false)
            {
                let alert = UIAlertController(title: "Alert!", message: "Password should be 8 characters!! 1 upperCase,1 digit and LowerCase", preferredStyle: .alert)
                
                                        
                             alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: {
                                            action in
                                            
                                        }))
                                         
                                        present (alert , animated: true)
                
            }
            
        
        else
        {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
            self.view.endEditing(true)
        }
    }
    
  
    //MARK: - LogIn
    
    @objc
    func loginButtonTap(_ sender: Any) {
     
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true,completion: nil)
        self.view.endEditing(true)
      
    }
    
    //MARK: - ImageBrowse
    
    @objc
    func BrowseButtonType(_ sender: Any)
    {
        
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
               alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
                   self.openCamera()
               }))

               alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
                   self.openGallery()
               }))

        alert.addAction(UIAlertAction.init(title: "Cancel",style: .cancel, handler: nil))

               self.present(alert, animated: true, completion: nil)

    }
    
    func openCamera()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func openGallery()
   {
       if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){
           let imagePicker = UIImagePickerController()
           imagePicker.delegate = self
           imagePicker.allowsEditing = true
           imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
           self.present(imagePicker, animated: true, completion: nil)
       }
       else
       {
           let alert  = UIAlertController(title: "Warning", message: "You don't have picture in gallery.", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
           self.present(alert, animated: true, completion: nil)
       }
   

    }
    
    
  
}

  //MARK: - Extension

extension UIImage {
    
    func scaledImage(withSize size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height))
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
   
    
    func scaleImageToFitSize(size: CGSize) -> UIImage {
        let aspect = self.size.width / self.size.height
        if size.width / aspect <= size.height {
            return scaledImage(withSize: CGSize(width: size.width, height: size.width / aspect))
        } else {
            return scaledImage(withSize: CGSize(width: size.height * aspect, height: size.height))
        }
}
    
}

// MARK: - Extension

// Setup Views
private extension RegisterViewController {
    func configureViews() {
        view.addSubview(backgroundImage)
        view.addSubview(bgImage)
        view.addSubview(mainStack)
        view.addSubview(profileimage)
        view.addSubview(btnImageBrowse)
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

        profileimage.snp.makeConstraints{ (make) in
            make.centerX.equalTo(backgroundImage)
            make.top.equalTo(headerStack.snp.bottom).offset(20)
            make.bottom.equalTo(bodyStack.snp.top).offset(-20)
        }
        
        btnImageBrowse.snp.makeConstraints{ (make) in
            make.left.equalTo(profileimage.snp.right).offset(-25)
            make.top.equalTo(profileimage.snp.bottom).offset(-30)
        }
        
        footer1.snp.makeConstraints{ (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(mainStack.snp.bottom)
        }
    }
}







// MARK: - Extension


