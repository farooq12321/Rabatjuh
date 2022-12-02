//
//  Header.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class HeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    //MARK: - data
//    var Data  = (all:"All",bistro: "bistro", dinner: "Dinner", buffet: "Buffet",cafe: "Cafe",fastfood: "FastFood")
    
    var items = ["All","Bistro","Dinner","Buffet","Cafe","FastFood"]
        

    
    static var identifier = "HeaderView"
    
    private lazy var collectionview = UICollectionView.collectionView()
    
    // MARK: - Body
    
    var backGruondImage = UIImageView.Image(
        name: AppString.Image.headerImage,
        cornerRadius: UIConstant.Image.cornerRadius
    )
    var headerImage = UIImageView.Image(
        name: AppString.Image.colorImage,
        cornerRadius: UIConstant.Image.cornerRadius
        
    )
    
    var  lblTitle = UILabel.Subheading(
        text:AppString.Label.headerTitle,
        textColor: UIColor.heading,
        numberOfLines: 2
    )
    
    private lazy var btnMenu = UIButton.Secondary(
        imageName: AppString.Image.btnMenu
    )
    
    var  searchBar = UISearchBar.searchbar()

    private lazy var headerStack = UIStackView(
        arrangedSubviews: [lblTitle,btnMenu],
        axis: .horizontal,
        distribution: .equalSpacing
    )
  

    

    
    // MARK: - Mainstack
    
    
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,searchBar],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
//        distribution: .equalSpacing
    )
    
    // MARK: -  // MARK: - ViewController Life Cycle
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
        collectionview.backgroundColor = UIColor.black
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}

//MARK: - Extension

private extension HeaderView {
    func Setup() {
        collectionview.dataSource = self
        collectionview.delegate = self
       
        
        collectionview.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
        collectionview.reloadData()

       
      }

  }



// MARK: - Extension

// Setup Views
private extension HeaderView {
    func configureViews() {
        
        self.addSubview(backGruondImage)
        self.addSubview(headerImage)
        self.addSubview(mainStack)
        self.addSubview(collectionview)
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
        collectionview.snp.makeConstraints{ (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(backGruondImage.snp.bottom)
            make.height.equalTo(50)
    }

    }
}


// MARK: - Extesion
extension HeaderView {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.items.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:MenuCollectionViewCell.identifier,for:indexPath)as! MenuCollectionViewCell

    
    cell.lblAll.text = items[indexPath.row]
//    cell.lblBistro.text = items[indexPath.row]
//        cell.lblDinner.text = items[indexPath.row]
//        cell.lblBuffet.text = items[indexPath.row]
//        cell.lblCafe.text = items[indexPath.row]
//        cell.lblFastFood.text = items[indexPath.row]
        return cell
    
}
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/2)-3, height: (collectionView.frame.width/2)-3)
    }
}



