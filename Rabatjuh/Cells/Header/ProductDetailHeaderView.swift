//
//  ProductDetailHeaderView.swift
//  Rabatjuh
//
//  Created by Apple on 02/12/2022.
//

import UIKit

protocol ProductDetailHeaderViewDelegate {
    func didTapButton()
    func didTapHeartButton()
}


class ProductDetailHeaderView: UIView {

    static var identifier = "HeaderView"
    
    var delegate: ProductDetailHeaderViewDelegate?

    @objc func didbuttonTapComment() {
            delegate?.didTapButton()
        }
 
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
        textColor:UIColor.labelPrimary
    )
    
    private lazy var btnDirection = UIButton.Secondary(
        title: AppString.Button.getDirection,
        titleColor: UIColor.buttonPrimaryBackground,
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
        action: #selector(didbuttonTapComment)
        

    )
    
    lazy var lblComment = UILabel.PreSecondary(
        text:AppString.Label.heart,
        textColor: UIColor.labelSecondary
        )
    
    private lazy var stack2 = UIStackView(
    arrangedSubviews: [btnComment,lblComment],
        axis: .vertical,
        distribution: .fillEqually
    )
    
    
    lazy var btnHeart = UIButton.Secondary(
         imageName: AppString.Image.unslectHeart,
        target: self,
        action: #selector(btnHeartPressed),
        isSelect: true
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
    
    
    @objc func btnHeartPressed()
        {

        if btnHeart.isSelected == true {
                    btnHeart.setImage(UIImage(named: "heartImage"), for: .normal)
            
            btnHeart.isSelected = false

                }
        else
                {
                    btnHeart.isSelected = true
                    btnHeart.setImage(UIImage(named: "UnselectedHeart"), for: .normal)
                }
           }

}






// MARK: - Extension

// Setup Views
private extension ProductDetailHeaderView {
    func configureViews() {
        
        self.backgroundColor = .white
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
            make.left.equalTo(headerImage).offset(UIConstant.Default.marginleft)
            make.right.equalTo(headerImage).offset(UIConstant.Default.marginright)
            make.top.equalTo(headerImage.snp.top).offset(50)
        
    }
        view.snp.makeConstraints{ (make) in
            make.centerX.equalTo(backGruondImage)
            make.top.equalTo(backGruondImage.snp.bottom).offset(UIConstant.Default.marginright)
        }
        
        stack5.snp.makeConstraints{ (make) in
            make.top.bottom.equalTo(view.layoutMarginsGuide)
            make.left.equalTo(view).offset(UIConstant.Default.leftmargin)
            make.right.equalTo(view).offset(UIConstant.Default.rightmargin)
        }
        

}

}
