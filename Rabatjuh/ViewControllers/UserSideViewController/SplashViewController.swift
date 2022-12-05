//
//  SplashViewController.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

class SplashViewController: UIViewController {
    
    
    // MARK: - Background
//    private lazy var logoImage = UIImageView.logoImage(
//        name: "logoImage"
//    )
    
    
    
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViews()
        //view.backgroundColor = .white
        
    }
    
}
    
    // MARK: - Extension

    private extension SplashViewController {
        func configureViews() {
            view.backgroundColor = .white
//            view.addSubview(logoImage)
          
            
            activateConstrains()
        }
        
        func activateConstrains() {
//            logoImage.snp.makeConstraints { (make) in
//                make.centerX.centerY.equalToSuperview()
//            }
            
        }
    }

    
    

