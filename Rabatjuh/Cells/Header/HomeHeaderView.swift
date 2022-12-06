//
//  Header.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class HeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var menu_vc: SideMenuViewController!

    //MARK: - data
    var Data  = [
        Resturants(all:"All",bistro: "bistro", dinner: "Dinner", buffet: "Buffet",cafe: "Cafe",fastfood: "FastFood")]
    
//    var items = ["All","Bistro","Dinner","Buffet","Cafe","FastFood"]
    
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
        imageName: AppString.Image.btnMenu,
        target: self,
        action: #selector(SideMenuButton)
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
    )
    
    // MARK: -  // MARK: - ViewController Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
        Setup()
        collectionview.backgroundColor = UIColor.red
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Action

    @objc func SideMenuButton(_ sender: Any) {
        let vc = SideMenuViewController()
        vc.present(vc, animated: true, completion: nil)
        
        if AppDelegate.menu_bool {
            showMenu()
        }else{
            closeMenu()
        }

    }
    
    func showMenu(){
        
    }
    func closeMenu(){
        
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

    }
        headerImage.snp.makeConstraints{ (make) in
            make.left.right.top.equalTo(backGruondImage)

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
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.Data.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:MenuCollectionViewCell.identifier,for:indexPath)as! MenuCollectionViewCell

    
    cell.lblAll.text = Data[indexPath.row].all
    cell.lblBistro.text = Data[indexPath.row].bistro
    cell.lblDinner.text = Data[indexPath.row].dinner
    cell.lblBuffet.text = Data[indexPath.row].buffet
    cell.lblCafe.text = Data[indexPath.row].cafe
    cell.lblFastFood.text = Data[indexPath.row].fastfood

        return cell
    
}
//
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/2)-1, height: (collectionView.frame.size.width/2)-1)
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGFloat {
//        return 20.0
//    }
//}

}

