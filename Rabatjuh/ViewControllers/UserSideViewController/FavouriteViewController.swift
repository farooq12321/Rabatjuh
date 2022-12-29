//
//  FavouriteViewController.swift
//  Rabatjuh
//
//  Created by Apple on 29/12/2022.
//

import UIKit

class FavouriteViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    private let label = UILabel.Primary(
        text: AppString.Label.privacyTitle,
        font: .heading,
        textColor: UIColor.buttonPrimaryBackground,
        textAlignment: .center
    )
    
    var Data  = ["All", "Bistro", "Dinner", "Buffet","Cafe", "FastFood"]
    
    private lazy var collectionview = UICollectionView.collectionView(
       
    )
    
//    private let label = UILabel.primary(
//        text:"heading",
//        font:.systemFont(ofSize: 40),
//        textColor: .red,
//        backgroundColor: .red,
//        textAlignment: .center
//    )
    
    // MARK: - Data
    var ResturantData = [
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:""),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:""),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF")

    ]

    // MARK: - Header

    
    // MARK: - Body
    
    private lazy var resturantTableVeiw = UITableView.TableVeiw()
  
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        Setup()
        configureViews()
        view.backgroundColor = .white
        title = "Favourite"

    
}


    
    
}
   
// MARK: - Extension

private extension FavouriteViewController {
    func Setup() {
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        navigationController?.navigationBar.tintColor = UIColor.backButtonColor
      resturantTableVeiw.delegate = self
      resturantTableVeiw.dataSource = self
        
        resturantTableVeiw.backgroundColor = .white
      resturantTableVeiw.register(RestaurantTableViewCell.self, forCellReuseIdentifier: RestaurantTableViewCell.identifier)
        
        
        
        collectionview.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
        collectionview.dataSource = self
        collectionview.delegate = self
//        collectionview.backgroundColor = .red
        self.collectionview.selectItem(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .left)
      }
  }



// MARK: - Extension

private extension FavouriteViewController {

    func configureViews(){
//        view.addSubview(label)
        view.addSubview(collectionview)
        view.addSubview(resturantTableVeiw)
        activateConstraint()

    }
    
    func activateConstraint(){
        collectionview.snp.makeConstraints{ (make) in
            make.left.top.right.equalTo(view.layoutMarginsGuide)
            make.height.equalTo(30)
            
            
        }
        
        resturantTableVeiw.snp.makeConstraints{ (make) in
                  make.left.right.bottom.equalToSuperview()
            make.top.equalTo(collectionview.snp.bottom)
            
    }
}
}



// MARK: - Extension

 extension FavouriteViewController: UITableViewDelegate, UITableViewDataSource{


//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = HeaderView()
//        headerView.backgroundColor = .white
//        headerView.delegate = self
//        return headerView
//        }
//    
//    func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int
//    ) -> CGFloat{
//        return 260
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return ResturantData.count
        
}
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
           let cell = tableView.dequeueReusableCell(withIdentifier: RestaurantTableViewCell.identifier,for: indexPath) as! RestaurantTableViewCell
            cell.restaurantImage.image = UIImage(named: ResturantData[indexPath.row].resturantImage)
            cell.lblName.text = ResturantData[indexPath.row].resturantName
            cell.lblDistance.text = ResturantData[indexPath.row].resturantDistance
            cell.lblDiscrption.text = ResturantData[indexPath.row].resturantDiscription
        
        if ResturantData[indexPath.row].discount.isEmpty == true
        {
            cell.lblDiscount.isHidden = true
        }
        else
        {
            cell.lblDiscount.text = ResturantData[indexPath.row].discount
            cell.lblDiscount.isHidden = false
            
        }
          cell.selectionStyle = .none
            return cell
    
        }
    
}

extension FavouriteViewController {
    
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return Data.count
}


func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:MenuCollectionViewCell.identifier,for:indexPath)as! MenuCollectionViewCell
    
    cell.lblCategory.text = Data[indexPath.item]
    

           
            cell.selectItem()

             return cell
    
    
    
    
    

}
    
    
   

    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell
          
        cell?.selectItem()
        print(indexPath.row)
       
        
        
        
        
  
        }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? MenuCollectionViewCell

     
        cell?.selectItem()
       
    
    }


}
