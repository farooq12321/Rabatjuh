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

//   lazy var productCollectionView = UICollectionView.collectionView(direction: UICollectionView.ScrollDirection.horizontal)
//
     
    let productCollectionView: UICollectionView = {
            
            let layout = UICollectionViewFlowLayout()
                layout.scrollDirection = .horizontal

            
            let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
            collection.translatesAutoresizingMaskIntoConstraints = false
            collection.backgroundColor = .clear
            
            collection.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
             
                
                return collection
            
        }()
    
    
    // MARK: - ViewController Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        productCollectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
//        productCollectionView.reloadData()
        
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
        contentView.addSubview(productCollectionView)
        activateConstrains()
    
      
        
    }
    
    func activateConstrains() {
        
        productCollectionView.snp.makeConstraints{ (make) in
            make.left.right.top.equalTo(self.layoutMarginsGuide)
        }
        
       
    }
}

// MARK: - Extension

extension ProductTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource{


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("1234")
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        print("####")
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
       
        return cell
    }
    
 
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: (collectionView.frame.size.width/2)-3, height: (collectionView.frame.size.width/2)-3)
//      }
    
    


}




    
