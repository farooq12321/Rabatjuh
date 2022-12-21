//
//  SideMenuHeaderView.swift
//  Rabatjuh
//
//  Created by Apple on 06/12/2022.
//

import UIKit

class SideMenuHeaderView: UIView {
    
    static var identifier = "SideMenuHeaderView"
    
    var backGruondImage = UIImageView.Image(
        name: AppString.Image.logo
       
    )
    
   
    // MARK: -  // MARK: - ViewController Life Cycle
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}

// MARK: - Extension

// Setup Views
private extension SideMenuHeaderView {
    func configureViews() {
        
        self.addSubview(backGruondImage)
        activateConstrains()
        
    }
    
    func activateConstrains() {
        backGruondImage.snp.makeConstraints{ (make) in
            make.left.top.equalTo(self.layoutMarginsGuide)
            make.right.equalTo(self.layoutMarginsGuide).offset(-100)
            
    }

    }
}


