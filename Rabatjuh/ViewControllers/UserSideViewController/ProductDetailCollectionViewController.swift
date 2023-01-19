//
//  ProductDetailCollectionViewController.swift
//  Rabatjuh
//
//  Created by Apple on 06/01/2023.
//

import UIKit

class ProductDetailCollectionViewController: UIViewController {

    
    var ProductData = [
      Product(sectionType:"Deals & Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
      Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
      Product(sectionType:"Deals & Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
      Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
      Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),

    ]
    
//    let productCollectionView = UICollectionView.collectionView(
//        direction: .vertical
//    )
    
    let productCollectionView: UICollectionView = {

       let layout = UICollectionViewFlowLayout()
           layout.scrollDirection = .vertical


       let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
       collection.translatesAutoresizingMaskIntoConstraints = false
       collection.backgroundColor = .clear

       collection.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)


           return collection

   }()
    
    lazy var mainStackViewContainer  = UIStackView(
        arrangedSubviews: [productCollectionView],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        
        view.backgroundColor = .white
        
        title = "Deals And Discount"
        
       
//        view.addSubview(productCollectionView)
//        productCollectionView.snp.makeConstraints { make in
//            make.edges.equalTo(view)
//        }
            
//            productCollectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
            
        view.addSubview(mainStackViewContainer)
        mainStackViewContainer.snp.makeConstraints { make in
            make.edges.equalTo(view)
//            make.left.right.bottom.equalTo(view)
//            make.top.equalTo(view.layoutMarginsGuide).offset(30)
        }

        // Do any additional setup after loading the view.
    }
    

  

}

extension ProductDetailCollectionViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    



       
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return ProductData[productCollectionView.tag].productImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
    
        cell.productImage.image = UIImage(named:ProductData [productCollectionView.tag].productImage[indexPath.row])
        cell.lblName.text = ProductData[productCollectionView.tag].productName[indexPath.row]
        cell.lblDiscription.text = ProductData[collectionView.tag].productDescription[indexPath.row]
        cell.lblPrice.text = ProductData[productCollectionView.tag].productPrice[indexPath.row]
            
            return cell
       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250.0)
        }
    
    // (collectionView.frame.size.width)/2
}

