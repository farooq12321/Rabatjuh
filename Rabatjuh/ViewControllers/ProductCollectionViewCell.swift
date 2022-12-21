//
//  ProductCollectionViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    
    // MARK: - Background
   
    static var identifier = "ProductCollectionViewCell"
    
    
    // MARK: - Body

    var productImage = UIImageView.Image(
        name: AppString.Image.productImage,
        cornerRadius: UIConstant.Image.cornerRadius)
    
    var lblName = UILabel.Primary(
        text:AppString.Label.productName
    )
    var lblDiscription = UILabel.Secondary(
        text:AppString.Label.productDiscription,
        numberOfLines: 2
    )
    
    var lblPrice = UILabel.primary(
        text:AppString.Label.productPrice,
        textColor: UIColor.heading,
        backgroundColor: UIColor.priceLabel,
        textAlignment: .center,
        height:UIConstant.Label.priceLabelHeight,
        width:UIConstant.Label.pricelabelWidth,
        cornerRadius:UIConstant.TextField.cornerRadius,
        maskedCorners: UIConstant.Label.Corner
       
    )
    
    private lazy var bodystack = UIStackView(arrangedSubviews: [lblName,lblDiscription],
    axis: .vertical,
    spacing: UIConstant.stackView.spacing,
    distribution: .fill
    )
   
    
    // MARK: - MainStack
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [productImage,bodystack],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing,
        distribution:.fill
    )
    
    
    
    // MARK: - ViewController Life Cycle
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            
        configureViews()
        }

    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder) isn not available")
        }

    
    

}

// MARK: - Extension

// Setup Views
private extension ProductCollectionViewCell {
    func configureViews() {
        
        contentView.addSubview(mainStack)
        contentView.addSubview(lblPrice)
        activateConstrains()
        
    }
    
    func activateConstrains() {
        
        mainStack.snp.makeConstraints{ (make) in
        make.left.equalTo(UIConstant.Default.leftmargin)
        make.right.equalTo(UIConstant.Default.rightmargin)
        }
        
        lblPrice.snp.makeConstraints{ (make) in
            make.right.equalTo(productImage.layoutMarginsGuide)
            make.top.equalTo(productImage.layoutMarginsGuide)
        }
    }
}



// MARK: - Extension


// Setup ApiCalls
//private extension LoginViewController {
//    func LoginApi() {
//
//    }
//
//
//
//}

