//
//  Product2TableViewCell.swift
//  Rabatjuh
//
//  Created by Apple on 08/12/2022.
//

import UIKit

class Product2TableViewCell: UITableViewCell {
    
    
    static let identifier = "Product2TableViewCell"
    
//    var product:Product? {
//        didSet{
//            lblHeader.text = product?.sectionType
////            productCollectionView.reloadData()
//        }
//    }
    
    var view = UIView.veiw(
        height:30.0
    )
    var lblHeader = UILabel.Primary(
        font:UIFont.boldSystemFont(ofSize: 20)
    )
    

     let productCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal

        
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .clear
        
        collection.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
         
        
            return collection
        
    }()
    
   
    
    
    lazy var mainStackViewContainer : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [view,productCollectionView])
        stackView.axis = .vertical
        
        
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setupView(){
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        
       
        
       
        self.contentView.addSubview(mainStackViewContainer)
        mainStackViewContainer.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
//        self.contentView.addSubview(view)
//        view.snp.makeConstraints{ (make) in
//            make.left.right.equalToSuperview()
//            make.bottom.equalTo(mainStackViewContainer.snp.top)
//            make.height.equalTo(30)
//        }
        view.addSubview(lblHeader)
        lblHeader.snp.makeConstraints{ (make) in
            make.left.equalTo(view.layoutMarginsGuide)
            make.top.equalTo(view.layoutMarginsGuide)
        }
        
    }
    
    func registerCell(cell : UICollectionViewCell){
        
        
    }
    
}



extension Product2TableViewCell: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    



       
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return ProductData[productCollectionView.tag].productImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
    
        cell.productImage.image = UIImage(named:ProductData [productCollectionView.tag].productImage[indexPath.row])
        cell.lblName.text = ProductData[productCollectionView.tag].productName[indexPath.row]
        cell.lblDiscription.text = ProductData[collectionView.tag].productDescription[indexPath.row]
            
            return cell
       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          //return CGSize(width: (collectionView.frame.size.width/2)-3, height: (collectionView.frame.width/2)-3)
        
        return CGSize(width: (collectionView.frame.size.width/2)-3, height: 250.0)
        }
    
    
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//            let padding: CGFloat = 24
//
//            var height = 200
//
////
//
//            return CGSize(width: (collectionView.frame.size.width/2.2)-padding, height: height)
//        }
    
    

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("Cell \(indexPath.row + 1) clicked")

//
//      }
    
}
