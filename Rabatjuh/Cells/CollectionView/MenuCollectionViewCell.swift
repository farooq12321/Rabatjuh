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
    
    var lblCategory = UILabel.Secondary(
//        font:UIFont.systemFont(ofSize: 15)
//        text: "Food item",
        font:UIFont.labelSecondary
    )
    var view = UIView.veiw(
        height:UIConstant.veiw.viewhieght,
        backgroundcolor: UIColor.viewbackGroundColor,
        cornerradius:UIConstant.veiw.viewCornerRadius
    )
    
    // MARK: - MainStack
    
    private lazy var stack = UIStackView(arrangedSubviews: [lblCategory],
    axis: .vertical
    
   
    )
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [stack],
        axis: .horizontal,
        distribution: .fill

      
    )
    
    
    // MARK: - ViewController Life Cycle
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            
        configureViews()
 
        }

    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder) isn not available")
        }
    
 
    
    func selectItem(){
        if(isSelected)
        {
           isSelected = true
            lblCategory.textColor = UIColor.selectMenuColor
            view.isHidden = false
            lblCategory.font = .boldSystemFont(ofSize: 16)
            
           
        }
       else
        {
            
            isSelected = false
            lblCategory.textColor = UIColor.labelSecondary
            view.isHidden = true
            lblCategory.font = .labelSecondary
            
            
        }
    }

}

// MARK: - Extension

// Setup Views
private extension MenuCollectionViewCell {
    func configureViews() {
        contentView.addSubview(view)
        contentView.addSubview(mainStack)

        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        view.snp.makeConstraints{ (make) in
            make.left.right.equalTo(lblCategory)
            make.top.equalTo(view.layoutMarginsGuide)
            make.bottom.equalTo(lblCategory.snp.bottom)
        }
        mainStack.snp.makeConstraints{ (make) in
            make.edges.equalTo(self.layoutMarginsGuide)
        }
       
      
       
    }
}


   

