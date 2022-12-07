//
//  SideMenuTableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 06/12/2022.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    static var identifier = "SideMenuTableViewCell"
    
    
    // MARK: - Body

    var icon = UIImageView.Image()
    
    var lblName = UILabel.Primary(
        text: AppString.Label.restaurantName,
        numberOfLines: 1,
        textAlignment: .left
    )
   
    
    private lazy var Stack1 = UIStackView(
        arrangedSubviews: [icon,lblName,UIView.spacer(for:.horizontal)],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing,
//        alignment: .center,
        distribution: .fill
                                    
        )
    


    
    // MARK: - MainStack
    
  
    
    
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
private extension SideMenuTableViewCell {
    func configureViews() {
        
        self.addSubview(Stack1)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        Stack1.snp.makeConstraints{ (make) in
            make.top.left.right.bottom.equalTo(self.layoutMarginsGuide)
        }
    }
}






