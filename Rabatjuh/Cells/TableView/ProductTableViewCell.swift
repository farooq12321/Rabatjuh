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

   lazy var productCollectionView = UICollectionView.collectionView()
    

    
    
    // MARK: - ViewController Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        

        productCollectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        
//        self.productCollectionView.backgroundColor = UIColor.white
        
        productCollectionView.reloadData()
        
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
        self.addSubview(productCollectionView)
        activateConstrains()
    
      
        
    }
    
    func activateConstrains() {
        
        productCollectionView.snp.makeConstraints{ (make) in
            make.left.right.top.equalTo(self.layoutMarginsGuide)
        }
        
       
    }
}

// MARK: - Extension

extension ProductTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProductData[productCollectionView.tag].productImage.count
    }



    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
        cell.productImage.image = UIImage(named:ProductData [productCollectionView.tag].productImage[indexPath.row])
        cell.lblName.text = ProductData[productCollectionView.tag].productName[indexPath.row]
        cell.lblDiscription.text = ProductData[productCollectionView.tag].productDescription[indexPath.row]

        return cell
    }
 
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (collectionView.frame.size.width/4)-3, height: (collectionView.frame.size.width/4)-3)
//      }
    
    


}







// Setup Views
//extension ProductViewController
//{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//      return ProductData.count
//
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:ProductCollectionViewCell.identifier,for:indexPath)as! ProductCollectionViewCell
//
//        cell.productImage.image = UIImage(named: ProductData[indexPath.row].productImage[indexPath.row])
//        //cell.PriceLabel.text = ResturantDetails[indexPath.row].PriceLabel
//        cell.lblName.text = ProductData[indexPath.row].productName
//        cell.lblDiscription.text = ProductData[indexPath.row].productDescription
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (collectionView.frame.width/2)-3, height: (collectionView.frame.width/2)-3)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if indexPath.row == 0 {
//            let vc = ReviewsViewController()
//            vc.modalPresentationStyle = .fullScreen
//            self.present(vc, animated: true,completion: nil)
//        }
//    }

  
    
