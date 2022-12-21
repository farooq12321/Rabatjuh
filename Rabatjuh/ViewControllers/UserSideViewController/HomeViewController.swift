//
//  HomeViewController.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject{
    func didTapSideMenuButton() 
   
    
}

class HomeViewController: UIViewController, HeaderViewDelegate {
    func didTapMenuButton() {
       
        
        delegate?.didTapSideMenuButton()
    }
    

    weak var delegate: HomeViewControllerDelegate?
    
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

    lazy var headerView: HeaderView = HeaderView()
    
    // MARK: - Body
    
    private lazy var resturantTableVeiw = UITableView.TableVeiw()
  
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let containerVC = ContainerViewController()
        containerVC.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        Setup()
        configureViews()

    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
      
    }
    
    
}
   
// MARK: - Extension

private extension HomeViewController {
    func Setup() {
      resturantTableVeiw.delegate = self
      resturantTableVeiw.dataSource = self
      resturantTableVeiw.register(RestaurantTableViewCell.self, forCellReuseIdentifier: RestaurantTableViewCell.identifier)
      }
  }



// MARK: - Extension

private extension HomeViewController {
    func configureViews() {
        
        navigationController?.navigationBar.isHidden = true
        self.view.addSubview(resturantTableVeiw)

        activateConstrains()
    }
    
    func activateConstrains() {
        resturantTableVeiw.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
         
        }
        
    }
}



// MARK: - Extension

 extension HomeViewController: UITableViewDelegate, UITableViewDataSource{


    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = HeaderView()
        headerView.backgroundColor = .white
        headerView.delegate = self
        return headerView
        }
    
    func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int
    ) -> CGFloat{
        return 260
    }

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {

            let vc = RestaurantDetailViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
            
    }
 
}








