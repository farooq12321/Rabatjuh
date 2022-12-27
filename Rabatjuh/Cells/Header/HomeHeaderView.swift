//
//  Header.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

protocol HeaderViewDelegate {
    func didTapMenuButton()
}

class HeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout, UITextFieldDelegate{

    
   
    

    //MARK: - data
    var Data  = ["All", "Bistro", "Dinner", "Buffet","Cafe", "FastFood"]

    //MARK: - Header
    
    static var identifier = "HeaderView"
    
    private lazy var collectionview = UICollectionView.collectionView(
       
    )
    
    var delegate: HeaderViewDelegate?
    
//    var selectIndex = 0
//    var selectIndexSec = 0

   
    
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
    
    private lazy var btnMenu = UIButton.secondary(
        width:UIConstant.Button.width,
        imageName: AppString.Image.btnMenu,
        target: self,
        action: #selector(btnMenuPressed)
    )
    
    var  searchBar = UITextField.search(
        placeholder: AppString.Textfield.search
    )

    private lazy var headerStack = UIStackView(
        arrangedSubviews: [lblTitle,btnMenu],
        axis: .horizontal,
        alignment: .fill,
        distribution: .equalSpacing
//
    )
  
    // MARK: - Mainstack
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,searchBar],
        axis: .vertical,
        spacing: UIConstant.Default.spacing
    )
    
    // MARK: -  // MARK: - ViewController Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
   
        
        configureViews()
        Setup()
        
//        collectionview.scrollToItem(at: IndexPath(item: selectIndex, section: selectIndexSec), at: [] ,animated: false)
  
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Action
    

    
    
    @objc func btnMenuPressed()
        {
          delegate?.didTapMenuButton()
           }


}

//MARK: - Extension

private extension HeaderView {
    func Setup() {
        
        collectionview.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
        collectionview.dataSource = self
        collectionview.delegate = self
        
        searchBar.delegate = self

//        collectionview.reloadData()
        self.collectionview.selectItem(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .left)
      
  
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
            make.top.equalTo(backGruondImage.snp.bottom).offset(-5)
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
    
    cell.lblCategory.text = Data[indexPath.item]
    

           
            cell.selectItem()

             return cell
    
    
    
    
    

}
    
    
   

    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell
          
        cell?.selectItem()
        print(indexPath.row)
       
        
        
        
        
  
        }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell

     
        cell?.selectItem()
       
    
    }


}


