////
////  ProductTableViewCell.swift
////  Rabatjuh
////
////  Created by Apple on 01/12/2022.
////
//
import UIKit

class ProductDetailTableViewCell: UITableViewCell {
    
    
    static let identifier = "ProductDetailTableViewCell"
    
    
    
    // MARK: - Body

    var view = UIView.veiw(
        height:UIConstant.veiw.viewheight
    )
    var lblHeader = UILabel.Primary(
        font:UIFont.heading
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
    
   
    
//
//  lazy var mainStackViewContainer : UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [view,productCollectionView])
//        stackView.axis = .vertical
//
//
//
//        return stackView
//    }()
    

    lazy var mainStackViewContainer  = UIStackView(
        arrangedSubviews: [view,productCollectionView],
        axis: .vertical,
        spacing: UIConstant.TextField.spacing
    )
    
    
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
        
        view.addSubview(lblHeader)
        lblHeader.snp.makeConstraints{ (make) in
            make.left.equalTo(UIConstant.Default.leftmargin)
            make.top.equalTo(view.layoutMarginsGuide)
        }
        
    }
    
    func registerCell(cell : UICollectionViewCell){
        
        
    }
    
}



extension ProductDetailTableViewCell: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    



       
    
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
        return CGSize(width: (collectionView.frame.size.width/2)-3, height: 250.0)
        }
    
    
}
