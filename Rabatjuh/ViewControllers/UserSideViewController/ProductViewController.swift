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

class ProductViewController: UIViewController{
    // MARK: - Background
   
    private lazy var productTableView = UITableView.TableVeiw()
    
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
        activateConstrains()
    }
    
    func activateConstrains() {
        
        productTableView.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
            
        }
        
    }
}




// MARK: - Extension

private extension ProductViewController {
    func Setup() {

        
        
        productTableView.delegate = self
        productTableView.dataSource = self
        
        productTableView.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.identifier)
       
      }

  }




// MARK: - Extension



extension ProductViewController:UITableViewDelegate,UITableViewDataSource{
    

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




