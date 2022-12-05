//
//  HomeTableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    static var identifier = "HomeTableViewCell"
    
    
    // MARK: - Body

    var restaurantImage = UIImageView.Image(
        cornerRadius: UIConstant.Image.cornerRadius
    )
    
    var lblName = UILabel.Primary(
        text: AppString.Label.restaurantName,
        numberOfLines: 1
    )
    var lblDistance = UILabel.PreSecondary(
        text: AppString.Label.restaurantDistance
    )
    
    private lazy var Stack1 = UIStackView(
        arrangedSubviews: [lblName,UIView.spacer(for:.horizontal),lblDistance],
        axis: .horizontal,
        alignment: .fill,
        distribution: .equalSpacing
                                    
        )
    
     var lblDiscrption = UILabel.Secondary(
        text: AppString.Label.restaurantDiscription,
        numberOfLines: 2
     )
    private lazy var Stack2 = UIStackView(arrangedSubviews: [Stack1,lblDiscrption], axis: .vertical)
    
    private lazy var btnHeart = UIButton.Secondary(imageName:"heartImage")
    private lazy var lblHeart = UILabel.Secondary(
        text:AppString.Label.heart
        )
    private lazy var Stack3 = UIStackView(arrangedSubviews: [btnHeart,lblHeart], axis: .vertical)
    
    private lazy var btnComments = UIButton.Secondary(imageName:"commentImage")
    private lazy var lblComments = UILabel.Secondary(
        text:AppString.Label.comments
    )
    private lazy var Stack4 = UIStackView(arrangedSubviews: [btnComments,lblComments], axis: .vertical)
    
    private lazy var Stack5 = UIStackView(arrangedSubviews: [Stack3,Stack4,UIView.spacer(for:.vertical)],
        axis: .vertical,
        spacing:UIConstant.Default.spacing
    )
    
    private lazy var Stack6 = UIStackView(arrangedSubviews: [restaurantImage,Stack5,], axis: .horizontal,
        spacing: UIConstant.TextField.spacing
    )

    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [Stack6,Stack2],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing,
        distribution:.fill
    )
    
    
    
    // MARK: - ViewController Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureViews()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



// MARK: - Extension

// Setup Views
private extension HomeTableViewCell {
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

