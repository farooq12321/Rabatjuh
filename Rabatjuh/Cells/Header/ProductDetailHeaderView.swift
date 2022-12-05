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
        textColor: UIColor.heading,
        textAlignment: .center
    )
    var lblDescritpion = UILabel.PreSecondary(
        text:AppString.Label.subTitle,
        textColor: UIColor.HexColor(hexString: "#FFFFFF"))
    

 // MARK: - mainStack

    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblTitle,lblDescritpion],
        axis: .vertical
    )
    
    private lazy var view = UIView.subveiw()
  

    

    // MARK: -  // MARK: - ViewController Life Cycle
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
            make.top.equalTo(backGruondImage.snp.bottom).offset(-20)
        }

}

}
