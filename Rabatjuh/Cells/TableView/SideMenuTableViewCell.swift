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

    var icon = UIImageView.Image(
       
    )
    
    var lblName = UILabel.Primary(
        text: AppString.Label.restaurantName,
        numberOfLines: 1,
        textAlignment: .left
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
        
        self.addSubview(icon)
        self.addSubview(lblName)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        
        icon.snp.makeConstraints{ (make) in
            make.left.top.equalTo(self.layoutMarginsGuide)
        }
        
        lblName.snp.makeConstraints{ (make) in
            make.top.equalTo(self.layoutMarginsGuide)
            make.left.equalTo(icon.layoutMarginsGuide).offset(40)
        }
    }
}






