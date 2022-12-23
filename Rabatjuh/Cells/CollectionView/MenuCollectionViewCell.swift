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
    )
    var view = UIView.veiw(
        height:UIConstant.veiw.viewhieght,
    backgroundcolor: .black,
        cornerradius:UIConstant.veiw.viewCornerRadius
    )
    
    // MARK: - MainStack
    
    private lazy var stack = UIStackView(arrangedSubviews: [lblCategory,view],
    axis: .vertical,
    spacing:-1
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

}

// MARK: - Extension

// Setup Views
private extension MenuCollectionViewCell {
    func configureViews() {
        
        contentView.addSubview(mainStack)
        activateConstrains()
        
    }
    
    func activateConstrains() {
       
        mainStack.snp.makeConstraints{ (make) in
            make.edges.equalTo(self.layoutMarginsGuide)
        }
       
    }
}


   

