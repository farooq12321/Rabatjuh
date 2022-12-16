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
    
   var lblDate = UILabel.Secondary(
       text:AppString.Label.date,
       textColor: UIColor.buttonPrimaryBackground,
       textAlignment: .right
    )
    
    private lazy var stack2 = UIStackView(arrangedSubviews: [lblReviews,lblDate],
    axis: .vertical,
    spacing: UIConstant.stackView.spacing
   )
    
    
    private lazy var NameStack = UIStackView(
        arrangedSubviews: [UIView.spacer(for: .vertical),lblName],
        axis: .vertical,
        distribution: .equalSpacing
    )
  
    
    private lazy var Stack1 = UIStackView(
        arrangedSubviews: [userImage,NameStack],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing
    )
    
    
    
  
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [Stack1,stack2],
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
        //self.addSubview(lblDate)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        mainStack.snp.makeConstraints{ (make) in
            make.top.left.right.bottom.equalTo(self.layoutMarginsGuide)
        }
//        lblDate.snp.makeConstraints{ (make) in
//            make.right.equalTo(self.layoutMarginsGuide)
//            make.top.equalTo(mainStack.snp.bottom)
//        }
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

    
