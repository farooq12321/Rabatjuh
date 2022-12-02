//
//  MenuCollectionViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 02/12/2022.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Background
    static var identifier = "ProductCollectionViewCell"
    
    // MARK: - Body

    var lblAll = UILabel.Heading(
        text: AppString.Label.all
    )
//    var lblBistro = UILabel.Primary(
//        text:AppString.Label.bistro
//    )
//    var lblDinner = UILabel.Primary(
//        text:AppString.Label.dinner
//    )
//    var lblBuffet = UILabel.Primary(
//        text:AppString.Label.cafe
//    )
//    var lblCafe = UILabel.Primary(
//        text:AppString.Label.buffet
//    )
//    var lblFastFood = UILabel.Primary(
//        text:AppString.Label.fastfood
//    )
    
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblAll],//lblBistro,lblDinner,lblBuffet,lblCafe,lblFastFood],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing,
        distribution: .equalSpacing

      
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
private extension MenuCollectionViewCell {
    func configureViews() {
        
        self.addSubview(mainStack)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        mainStack.snp.makeConstraints{ (make) in
        make.left.right.equalTo(self.layoutMarginsGuide)
        }
    }
}


   

