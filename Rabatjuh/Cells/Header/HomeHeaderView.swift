//
//  Header.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class HeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout, UITextFieldDelegate{

    
    
    var menu_vc: SideMenuViewController!
    

    //MARK: - data
    var Data  = ["All", "Bistro", "Dinner", "Buffet","Cafe", "FastFood"]

    //MARK: - Header
    
    static var identifier = "HeaderView"
    
    private lazy var collectionview = UICollectionView.collectionView()
    
    var selectedIndex = 0
    
    // MARK: - Body
    
    
    
   
    
    var backGruondImage = UIImageView.Image(
        name: AppString.Image.headerImage,
        cornerRadius: UIConstant.Image.cornerRadius
    )
    
    var headerImage = UIImageView.Image(
        name: AppString.Image.colorImage,
        cornerRadius: UIConstant.Image.cornerRadius
        
    )
    

    var view = UIView.veiw()
    
    var  lblTitle = UILabel.Subheading(
        text:AppString.Label.headerTitle,
        font: .boldSystemFont(ofSize: 20),
        textColor: UIColor.heading,
        numberOfLines: 0
    )
    
    private lazy var btnMenu = UIButton.Secondary(
        imageName: AppString.Image.btnMenu
    )
    
    var  searchBar = UITextField.search(
        placeholder: AppString.Textfield.search
    )

    private lazy var headerStack = UIStackView(
        arrangedSubviews: [lblTitle,btnMenu],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing,
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
        
        

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Action
    

    func showMenu(){
        
    }
    func closeMenu(){
        
    }


}

//MARK: - Extension

private extension HeaderView {
    func Setup() {
        
        collectionview.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
        collectionview.dataSource = self
        collectionview.delegate = self
        
        searchBar.delegate = self

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
            make.left.right.equalTo(headerImage.layoutMarginsGuide)
            make.left.equalTo(UIConstant.Default.leftmargin)
            make.right.equalTo(UIConstant.Default.rightmargin)
            make.bottom.equalTo(backGruondImage.snp.bottom).offset(-50)
            
    }
        
        
        collectionview.snp.makeConstraints{ (make) in
            make.left.right.equalTo(mainStack)
            make.top.equalTo(backGruondImage.snp.bottom)
            make.height.equalTo(50)
    }

    }
}

// MARK: - Extesion
extension HeaderView {
    
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return Data.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:MenuCollectionViewCell.identifier,for:indexPath)as! MenuCollectionViewCell

             cell.lblCategory.text = Data[indexPath.row]
             return cell
    
}

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell{
            cell.lblCategory.textColor = UIColor.selectMenuColor
        

        }
        
}


    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell{
            cell.lblCategory.textColor = UIColor.labelSecondary
        }
    }
    
    

}

