//
//  ProductViewController.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit

  // MARK: - Data

var ProductData = [
    Product(sectionType:"Deals And Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"]),
    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"]),
    Product(sectionType:"Deals And Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"]),
    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"])
//    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//    Product(sectionType:"Deals And Discount",productImage:["productImage","productImage","productImage"], productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create")
//    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//    Product(sectionType:"Deals And Discount",productImage: ["productImage","productImage","productImage"], productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create")

]

class ProductViewController: UIViewController{ //UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    // MARK: - Data
//    var ProductData = [
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create"),
//        Product(sectionType:"Deals And Discount",productImage: "productImage", productName: "Mint Chocolate bomb", productDescription: "There are many situations when you want to create")
//
//    ]
    // MARK: - Background
   
    private lazy var productTableView = UITableView.TableVeiw()
    
    lazy var headerView: ProductDetailHeaderView = ProductDetailHeaderView()
    
//    //private lazy var productCollectionView = UICollectionView.collectionView()
//    
//    lazy var headerView: ProductDetailHeaderView = ProductDetailHeaderView()
    
    
    // MARK: - Header

  
    // MARK: - Body
    
   
    // MARK: - Footer

  
    // MARK: - Variables
    

    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        Setup()
        configureViews()
       // productTableView.backgroundColor = .white
        
      
    }
}

    // MARK: - Actions
 

// MARK: - Extension

private extension ProductViewController {
    func configureViews() {
        
        navigationController?.navigationBar.isHidden = true
        
        self.view.addSubview(productTableView)
//        productTableView.addSubview(productCollectionView)
        //self.view.addSubview(productCollectionView)

        activateConstrains()
    }
    
    func activateConstrains() {
        
        productTableView.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
            
        }
//        productCollectionView.snp.makeConstraints{ (make) in
//            make.left.right.equalToSuperview()
//
//        }
        
    }
}




// MARK: - Extension

private extension ProductViewController {
    func Setup() {
//        productCollectionView.dataSource = self
//        productCollectionView.delegate = self
       
        
//        productCollectionView.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
//        self.view.backgroundColor = .white
//        productCollectionView.reloadData()
//        productCollectionView.backgroundColor = .white
//        productCollectionView.frame = view.bounds
        
        
        
        productTableView.delegate = self
        productTableView.dataSource = self
          
  //        resturantTableVeiw.tableHeaderView = headerView
        
        productTableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.identifier)
       
      }

  }




// MARK: - Extension



extension ProductViewController:UITableViewDelegate,UITableViewDataSource{
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = ProductDetailHeaderView()
////        headerView1.headerImage.image = UIImage(named: AppString.Image.headerImage)
////        headerView1.lblTitle.text = ""
//        headerView.backgroundColor = .white
//        return headerView
//        }
    
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView()
//        view.backgroundColor = UIColor.white
//        let lbl = UILabel()
//        lbl.textColor = UIColor.black
//        lbl.text = ProductData[section].sectionType
//        view.addSubview(lbl)
//        return view
//    }
    
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 250
//    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ProductData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ProductData[section].sectionType

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as! ProductTableViewCell
        cell.productCollectionView.tag  = indexPath.section
        return cell
    }
}

// MARK: - Extension




