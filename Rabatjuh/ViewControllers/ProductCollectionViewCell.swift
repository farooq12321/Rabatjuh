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
        name: AppString.Image.productImage)
    var lblName = UILabel.Primary(
        text:AppString.Label.productName
    )
    var lblDiscription = UILabel.Secondary(
        text:AppString.Label.productDiscription
    )
   
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [productImage,lblName,lblDiscription],
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
        
        self.addSubview(mainStack)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        mainStack.snp.makeConstraints{ (make) in
        make.top.left.right.bottom.equalTo(self.layoutMarginsGuide)
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

