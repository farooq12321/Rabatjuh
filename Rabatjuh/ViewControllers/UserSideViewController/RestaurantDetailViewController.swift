//
//  RestaurantDetailViewController.swift
//  Rabatjuh
//
//  Created by Apple on 09/12/2022.
//

import UIKit

// MARK: - Data

var ProductData = [
  Product(sectionType:"Deals & Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
  Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
  Product(sectionType:"Deals & Discount",productImage:["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
  Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),
  Product(sectionType:"Deals & Discount",productImage: ["productImage","productImage","productImage"], productName: ["Mint Chocolate bomb","Mint Chocolate bomb","Mint Chocolate bomb"], productDescription: ["There are many situations when you want to create","There are many situations when you want to create","There are many situations when you want to create"],productPrice:["$5","$5","$5"]),

]

class RestaurantDetailViewController: UIViewController, ProductDetailHeaderViewDelegate {
    func didTapHeartButton() {
    }
    
    
    
    func didTapButton() {
        let vc = ReviewsViewController()
        self.present(vc, animated: true, completion: nil)
    }

//
//
        
            
        
    
      
        // MARK: - Body
        
    private lazy var productTableView = UITableView.TableVeiw()
       
        // MARK: - ViewController Life Cycle
        override func viewDidLoad() {
            super.viewDidLoad()

            Setup()
            configureViews()
            
//            navigationController?.navigationBar.isHidden = true
            
//            
//            self.navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "BackButtonImage") 
//               self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "BackButtonImage")
//            navigationItem.leftBarButtonItem?.tintColor = .red
            
            self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "close")
            self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "close")
            self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            
//            navigationController?.navigationBar.barTintColor = UIColor.red
//
//            self.navigationController?.navigationBar.shadowImage = UIImage()
//               self.navigationController?.navigationBar.isTranslucent = true
//               self.navigationController?.view.backgroundColor = .clear
            
//            navigationItem.leftBarButtonItem?.tintColor = .red
//            self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackButtonImage")
//               self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackButtonImage")
            
            navigationItem.title = "Restaurant Detail"
            
          
                
        }
    }

        // MARK: - Actions
     

    // MARK: - Extension

    private extension RestaurantDetailViewController {
        func configureViews() {
         
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

    private extension RestaurantDetailViewController {
        func Setup() {
            
            productTableView.register(ProductDetailTableViewCell.self, forCellReuseIdentifier: ProductDetailTableViewCell.identifier)
            productTableView.delegate = self
            productTableView.dataSource = self
            
           
          }

      }

    // MARK: - Extension

    extension RestaurantDetailViewController:UITableViewDelegate,UITableViewDataSource{
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 300
        }
        
        
        
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = ProductDetailHeaderView()
            headerView.delegate = self
            return headerView
            }
        
        func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int
        ) -> CGFloat{
            return 240
        }

     
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ProductData.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = productTableView.dequeueReusableCell(withIdentifier: ProductDetailTableViewCell.identifier, for: indexPath) as! ProductDetailTableViewCell
            cell.productCollectionView.tag  = indexPath.section
            cell.lblHeader.text = ProductData[indexPath.row].sectionType
            return cell
        }

    }


    // MARK: - Extension





