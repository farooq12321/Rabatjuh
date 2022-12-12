//
//  ProductDetailHeaderView.swift
//  Rabatjuh
//
//  Created by Apple on 02/12/2022.
//

import UIKit

class ProductDetailHeaderView: UIView {

    
    static var identifier = "HeaderView"
    
    
    // MARK: - Body
    
    var backGruondImage = UIImageView.Image(
        name: AppString.Image.backGroundImage
    )
    var headerImage = UIImageView.Image(
        name: AppString.Image.productcolorImage

        
    )
    
    var  lblTitle = UILabel.Subheading(
        text:AppString.Label.Title,
        font: .boldSystemFont(ofSize: 20),
        textColor: UIColor.heading,
        textAlignment: .center
    )
    var lblDescritpion = UILabel.PreSecondary(
        text:AppString.Label.subTitle,
        textColor: UIColor.subheading,
        textAlignment: .center
    )
        
    

 // MARK: - mainStack

    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblTitle,lblDescritpion],
        axis: .vertical
    )
    
    private lazy var view = UIView.subveiw()
  
    private lazy var lblKilometer = UILabel.PreSecondary(
        text:AppString.Label.kilometer,
        textColor:UIColor.buttonPrimaryBackground
    )
    
    private lazy var btnDirection = UIButton.Secondary(
        title: AppString.Button.getDirection,
        titleColor: UIColor.labelPrimary,
        font: UIFont.labelPreSecondary
    )
    
    private lazy var stack1 = UIStackView(
        arrangedSubviews: [lblKilometer,btnDirection],
        axis: .vertical,
        distribution: .equalSpacing
    )
    
    
    
    private lazy var btnComment = UIButton.Secondary(
        imageName: AppString.Image.commet,
        target: self,
        action: #selector(viewReviews)
    )
    
    private lazy var lblComment = UILabel.PreSecondary(
        text:AppString.Label.heart,
        textColor: UIColor.labelSecondary
        )
    
    private lazy var stack2 = UIStackView(
    arrangedSubviews: [btnComment,lblComment],
        axis: .vertical,
        distribution: .fillEqually
    )
    
    
    private lazy var btnHeart = UIButton.Secondary(
        imageName: AppString.Image.heart
    )
    
    private lazy var lblHeart = UILabel.PreSecondary(
        text:AppString.Label.heart,
        textColor: UIColor.labelSecondary
        )
    
    private lazy var stack3 = UIStackView(
    arrangedSubviews: [btnHeart,lblHeart],
        axis: .vertical,
        distribution: .fillEqually
    )
    
    
    private lazy var stack4 = UIStackView(
        arrangedSubviews: [stack2,stack3],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing
    )
    
    private lazy var stack5 = UIStackView(
        arrangedSubviews: [stack1,stack4],
        axis: .horizontal,
        distribution: .equalSpacing
    )

    

    // MARK: -  // MARK: - ViewController Life Cycle
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // MARK: - Actions
    
    @objc
    func viewReviews(_ sender: Any) {
      //let vc = ReviewsViewController()
        
    
    
}


}



// MARK: - Extension

// Setup Views
private extension ProductDetailHeaderView {
    func configureViews() {
        
        self.addSubview(backGruondImage)
        self.addSubview(headerImage)
        self.addSubview(mainStack)
        self.addSubview(view)
        self.addSubview(stack5)
        activateConstrains()
        
    }
    
    func activateConstrains() {
        backGruondImage.snp.makeConstraints{ (make) in
            make.left.right.top.equalToSuperview()
            
    }
        headerImage.snp.makeConstraints{ (make) in
            make.left.right.top.equalTo(backGruondImage)
        }
        
        mainStack.snp.makeConstraints{ (make) in
            make.left.equalTo(headerImage).offset(30)
            make.right.equalTo(headerImage).offset(-30)
            make.top.equalTo(headerImage.snp.top).offset(50)
        
    }
        view.snp.makeConstraints{ (make) in
            make.centerX.equalTo(backGruondImage)
            make.top.equalTo(backGruondImage.snp.bottom).offset(-30)
        }
        
        stack5.snp.makeConstraints{ (make) in
            make.left.right.top.bottom.equalTo(view.layoutMarginsGuide)
        }
        

}

}
