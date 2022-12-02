//
//  ProductTableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

//import UIKit
//
//class ProductTableViewCell: UITableViewCell {
//
//    static var cellId = "cell"
//    
//    // MARK: - Body
//
//    var productCollectionView: UICollectionView!
//    //@IBOutlet weak var GroceryProduct: UICollectionView!
//    
//    
//    // MARK: - ViewController Life Cycle
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        productCollectionView.dataSource = self
//        productCollectionView.delegate = self
//        configureViews()
//        
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    
//    
//
//}
//
//
//// MARK: - Action
//
//
//
//
//
//// MARK: - Extension
//
//// Setup Views
//private extension ProductTableViewCell {
//    func configureViews() {
//        
////        self.addSubview(mainStack)
//        activateConstrains()
//        
//    }
//    
//    func activateConstrains() {
//       
////        mainStack.snp.makeConstraints{ (make) in
////            make.top.left.right.bottom.equalTo(self.layoutMarginsGuide)
////        }
//    }
//}
//
//// MARK: - Extension
//
//extension ProductTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource{
//    
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return ProductData[productCollectionView.tag].productImage.count
//        return ProductData[productCollectionView.tag].productImage.count
//    }
//    
//    
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = GroceryProduct.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! GroceryProductCollectionViewCell
//        cell.GroceryImages.image = UIImage(named:GroceryProductData [GroceryProduct.tag].ProductImage[indexPath.row])
////        cell.ProductImage.image = UIImage(named: ProductData[GroceryProduct.tag].ProductImage[indexPath.row])
//        cell.GroceryDesciption.text = GroceryProductData[GroceryProduct.tag].ProductDesciption[indexPath.row]
//        cell.GroceryPrice.text = GroceryProductData[GroceryProduct.tag].ProductPrice[indexPath.row]
//        
//        //cell.desc.text = itemlist[indexPath.row].productName
//        return cell
//    }
//    
//    
//}
//
//
//
//
//
//
//
