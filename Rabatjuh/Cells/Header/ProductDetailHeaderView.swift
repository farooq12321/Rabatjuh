//
//  ProductDetailHeaderView.swift
//  Rabatjuh
//
//  Created by Apple on 02/12/2022.
//

import UIKit

class ProductDetailHeaderView: UIView {

    
    static var identifier = "HeaderView"
    
    //private lazy var collectionview = UICollectionView.collectionView()
    
    // MARK: - Body
    
    var backGruondImage = UIImageView.Image(
        name: AppString.Image.BackGroundImage,
        cornerRadius: UIConstant.Image.cornerRadius
    )
    var headerImage = UIImageView.Image(
        name: AppString.Image.colorImage,
        cornerRadius: UIConstant.Image.cornerRadius
        
    )
    
    var  lblTitle = UILabel.Subheading(
        text:AppString.Label.subTitle,
        textColor: UIColor.heading,
        numberOfLines: 1
    )
   

    
    
    
    
    
    var  lblDescription = UILabel.Subheading(
        text:AppString.Label.headerTitle,
        textColor: UIColor.heading,
        numberOfLines: 1
    )
    
//    private lazy var btnMenu = UIButton.Secondary(
//        imageName: AppString.Image.btnMenu
//    )
//
//    var  searchBar = UISearchBar.searchbar()

    private lazy var mainStack = UIStackView(
        arrangedSubviews: [lblTitle,lblDescription],
        axis: .vertical
//        distribution: .equalSpacing
    )
  

    

    
    // MARK: - Mainstack
    
    
//
//    private lazy var mainStack = UIStackView(
//        arrangedSubviews: [headerStack,searchBar],
//        axis: .vertical,
//        spacing: UIConstant.TextField.spacing
////        distribution: .equalSpacing
//    )
    
    // MARK: -  // MARK: - ViewController Life Cycle
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
//        collectionview.backgroundColor = UIColor.black
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}

//MARK: - Extension

//private extension ProductDetailHeaderView {
//    func Setup() {
//        collectionview.dataSource = self
//        collectionview.delegate = self
//
//
//        collectionview.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
//        collectionview.reloadData()
//
//
//      }
//
//  }



// MARK: - Extension

// Setup Views
private extension ProductDetailHeaderView {
    func configureViews() {
        
        self.addSubview(backGruondImage)
        self.addSubview(headerImage)
        self.addSubview(mainStack)
        //self.addSubview(collectionview)
        activateConstrains()
        
    }
    
    func activateConstrains() {
        backGruondImage.snp.makeConstraints{ (make) in
            make.left.right.top.equalToSuperview()
//            make.height.equalTo(200)
            
    }
        headerImage.snp.makeConstraints{ (make) in
            make.left.right.top.equalTo(backGruondImage)
            
//            make.height.equalTo(200)
        }
        
        mainStack.snp.makeConstraints{ (make) in
            make.left.equalTo(headerImage).offset(30)
            make.right.equalTo(headerImage).offset(-30)
            make.top.equalTo(headerImage.snp.top).offset(50)
        
    }
//        collectionview.snp.makeConstraints{ (make) in
//            make.left.right.equalToSuperview()
//            make.top.equalTo(backGruondImage.snp.bottom)
//            make.height.equalTo(50)
//    }

    }
}



