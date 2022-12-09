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

    var view = UIView.veiw(
        height:1.0,
        backgroundcolor: UIColor.red
    )
    
    var lblCategory = UILabel.Secondary(
//        text: "Lorum Ipsum"
    )
    
    // MARK: - MainStack
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblCategory],
        axis: .horizontal,
//        spacing: UIConstant.TextField.spacing,
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
    
    
  
//    func showview(){
//        self.view.alpha = 1.0
//    }
//    func hideview(){
//        self.view.alpha = 0.0
//    }
    
    
    
//    override var isSelected: Bool {
//        didSet{
//            if self.isSelected {
//                UIView.animate(withDuration: 0.3) {
////
//
//                    self.backgroundColor = UIColor.systemGray4
////                    self.layer.borderWidth = 1
////                    self.layer.borderColor = UIColor.red.cgColor
//                    self.layer.cornerRadius = 10.0
//
//
//
//                }
//            }
//            else {
//                UIView.animate(withDuration: 0.3) {
////
//                    self.backgroundColor = UIColor.clear
//                    self.layer.borderWidth = 0.0
//                    self.layer.borderColor = UIColor.clear.cgColor
//
//
//
//                }
//            }
//        }
   // }
//    
 

    
    

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


   

