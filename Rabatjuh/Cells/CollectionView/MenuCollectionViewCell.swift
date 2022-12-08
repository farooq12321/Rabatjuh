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
//        text: "Lorum Ipsum"
    )
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblCategory],
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


   

