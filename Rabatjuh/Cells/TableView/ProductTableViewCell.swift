//
//  ProductTableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    static var identifier = "ProductTableViewCell"
    
    // MARK: - Body

    var productCollectionView: UICollectionView!
    //@IBOutlet weak var GroceryProduct: UICollectionView!
    
    
    // MARK: - ViewController Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        productCollectionView.dataSource = self
//        productCollectionView.delegate = self
        configureViews()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}


// MARK: - Action





// MARK: - Extension

// Setup Views
private extension ProductTableViewCell {
    func configureViews() {
        
        activateConstrains()
        
    }
    
    func activateConstrains() {
    }
}

// MARK: - Extension

//extension ProductTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource{
//
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return ProductData[productCollectionView.tag].productImage.count
//    }
//
//
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
//        cell.GroceryImages.image = UIImage(named:ProductData [productCollectionView.tag].productImage[indexPath.row])
//
//        cell.lblName.text = ProductData[productCollectionView.tag].productName[indexPath.row]
//        cell.lblDiscription.text = ProductData[productCollectionView.tag].productDescription[indexPath.row]
//
//        return cell
//    }
//
//
//}
