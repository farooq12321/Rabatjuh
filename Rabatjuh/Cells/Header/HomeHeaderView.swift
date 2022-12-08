//
//  Header.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class HeaderView: UIView, UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    
    
    var menu_vc: SideMenuViewController!

    //MARK: - data
    var Data  = ["All", "bistro", "Dinner", "Buffet","Cafe", "FastFood"]

    //MARK: - Header
    
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
        numberOfLines: 0
    )
    
    private lazy var btnMenu = UIButton.Secondary(
        imageName: AppString.Image.btnMenu
    )
    
    var  searchBar = UISearchBar.searchbar()

    private lazy var headerStack = UIStackView(
        arrangedSubviews: [lblTitle,btnMenu],
        axis: .horizontal,
        spacing: UIConstant.TextField.spacing,
        distribution: .equalSpacing
    )
  
    // MARK: - Mainstack
    
    private lazy var mainStack = UIStackView(
        arrangedSubviews: [headerStack,searchBar,collectionview],
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
    
    
    
//    func slideMenuItemSelectedAtIndex(_ index: Int32) {
////        let topViewController : UIViewController = self.navigationController!.topViewController!
////        print("View Controller is : \(topViewController) \n", terminator: "")
//        switch(index){
//        case 0:
//            print("Home\n", terminator: "")
////
////            self.openViewControllerBasedOnClass(HomeViewController)
////
////
////            break
//        case 1:
//            print("Play\n", terminator: "")
////
////            self.openViewControllerBasedOnIdentifier("PlayVC")
//
//            break
//        default:
//            print("default\n", terminator: "")
//        }
//    }
    
//    func openViewControllerBasedOnIdentifier(_ strIdentifier:String){
//        let destViewController : UIViewController = self.instantiateViewController(withIdentifier: strIdentifier)
//
//        let topViewController : UIViewController = self.navigationController!.topViewController!
//
//        if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
//            print("Same VC")
//        } else {
//            self.navigationController!.pushViewController(destViewController, animated: true)
//        }
//    }
    
//    @objc func onSlideMenuButtonPressed(_ sender : UIButton){
//        if (sender.tag == 10)
//        {
//            // To Hide Menu If it already there
//            self.slideMenuItemSelectedAtIndex(-1);
//
//            sender.tag = 0;
//
//            let viewMenuBack : UIView = self.subviews.last!
//
//            UIView.animate(withDuration: 0.3, animations: { () -> Void in
//                var frameMenu : CGRect = viewMenuBack.frame
//                frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
//                viewMenuBack.frame = frameMenu
//                viewMenuBack.layoutIfNeeded()
//                viewMenuBack.backgroundColor = UIColor.clear
//                }, completion: { (finished) -> Void in
//                    viewMenuBack.removeFromSuperview()
//            })
//
//            return
//        }
//
//        sender.isEnabled = false
//        sender.tag = 10
//
////    @objc func SideMenuButton(_ sender: UIButton) {
//        let menuVC = SideMenuViewController()
//        menuVC.present(menuVC, animated: true, completion: nil)
//
//        menuVC.btnMenu = sender
//        menuVC.delegate = self
//        self.addSubview(menuVC.view)
////        self.addChild(menuVC)
//        menuVC.view.layoutIfNeeded()
//
//
//        menuVC.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
//
//        UIView.animate(withDuration: 0.3, animations: { () -> Void in
//            menuVC.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
//            sender.isEnabled = true
//            }, completion:nil)
//
////        if AppDelegate.menu_bool {
////            showMenu()
////        }else{
////            closeMenu()
////        }
//
//    }
    
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
            make.left.right.equalTo(self.layoutMarginsGuide)
            make.top.equalTo(headerImage.snp.top).offset(60)
    }
        
        
        collectionview.snp.makeConstraints{ (make) in
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


}

