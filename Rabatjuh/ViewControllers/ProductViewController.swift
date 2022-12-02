//
//  ProductViewController.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

class ProductViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    // MARK: - Data
    var ProductData = [
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create")
    
    ]
    // MARK: - Background
   
    private lazy var productTableView = UITableView.TableVeiw()
    
    private lazy var productCollectionView = UICollectionView.collectionView()
    
    lazy var headerView: ProductDetailHeaderView = ProductDetailHeaderView()
    
    
    // MARK: - Header

  
    // MARK: - Body
    
   
    // MARK: - Footer

  
    // MARK: - Variables
    

    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        Setup()
        configureViews()
      
    }
}

    // MARK: - Actions
 

// MARK: - Extension

private extension ProductViewController {
    func configureViews() {
        
        navigationController?.navigationBar.isHidden = true
        
        self.view.addSubview(productTableView)
        productTableView.addSubview(productCollectionView)
        //self.view.addSubview(productCollectionView)

        activateConstrains()
    }
    
    func activateConstrains() {
        
        productTableView.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
            
        }
        productCollectionView.snp.makeConstraints{ (make) in
            make.left.right.equalToSuperview()
         
        }
        
    }
}




// MARK: - Extension

private extension ProductViewController {
    func Setup() {
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
       
        
        productCollectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        self.view.backgroundColor = .white
        productCollectionView.reloadData()
        productCollectionView.backgroundColor = .white
        productCollectionView.frame = view.bounds
       
      }

  }


// MARK: - Extension

// Setup Views
extension ProductViewController
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return ProductData.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:ProductCollectionViewCell.identifier,for:indexPath)as! ProductCollectionViewCell

        cell.productImage.image = UIImage(named: ProductData[indexPath.row].productImage)
        //cell.PriceLabel.text = ResturantDetails[indexPath.row].PriceLabel
        cell.lblName.text = ProductData[indexPath.row].productName
        cell.lblDiscription.text = ProductData[indexPath.row].productDescription
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width/2)-3, height: (collectionView.frame.width/2)-3)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = ReviewsViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true,completion: nil)
        } 
    }

  
    
    
    

}

 // MARK: -

//extension ProductViewController:UITableViewDelegate,UITableViewDataSource{
//
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 250
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return ProductData.count
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return ProductData[section].sectionType
//
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = productTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProductTableViewCell
//        cell.productCollectionView.tag  = indexPath.section
//        return cell
//    }
//    
//
//}

// MARK: - Extension


// Setup ApiCalls
//private extension LoginViewController {
//    func LoginApi() {
//
//    }
//}
//



