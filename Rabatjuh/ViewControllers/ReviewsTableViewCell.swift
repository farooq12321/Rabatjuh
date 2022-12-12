//
//  ReviewsTableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

class ReviewsTableViewCell: UITableViewCell {

    
    // MARK: - Background
   
    static var identifier = "ReviewsTableViewCell"
    
    
    // MARK: - Body

    var userImage = UIImageView.UserImage(
        cornerRadius: UIConstant.image.CornerRaidus,
        height: UIConstant.image.height,
        width: UIConstant.image.width
    )
    var lblName = UILabel.Primary(
        text:AppString.Label.userName
    )
    
    var lblReviews = UILabel.Secondary(
        text:AppString.Label.userReviews
    )
  
    
    private lazy var Stack1 = UIStackView(
        arrangedSubviews: [userImage,lblName],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing
    )
    
    
    
  
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [Stack1,lblReviews],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
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
private extension ReviewsTableViewCell {
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

    
