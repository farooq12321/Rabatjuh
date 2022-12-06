//
//  HomeViewController.swift
//  Rabatjuh
//
//  Created by Apple on 01/12/2022.
//

import UIKit



class HomeViewController: UIViewController {

    var menu_vc: SideMenuViewController!
    
    // MARK: - Data
    var ResturantData = [
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Golria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create")

    ]

    // MARK: - Background

    
    // MARK: - Header

    lazy var headerView: HeaderView = HeaderView()
    
    // MARK: - Body
    
    private lazy var resturantTableVeiw = UITableView.TableVeiw()
    
   
    // MARK: - Footer


    // MARK: - Variables
    
  
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Setup()
        configureViews()
        
       
        
    }
    
    
    
//    // MARK:- Action
//
//    @objc func SideMenuButton(_ sender: Any) {
//        let vc = SideMenuViewController()
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true,completion: nil)
//
//       self.view.endEditing(true)
//
//    }
//
//    func showMenu(){
//
//    }
//    func closeMenu(){
//
//    }
    
  

}
   
 




// MARK: - Extension

private extension HomeViewController {
    func Setup() {
      resturantTableVeiw.delegate = self
      resturantTableVeiw.dataSource = self
        
//        resturantTableVeiw.tableHeaderView = headerView
      
      resturantTableVeiw.register(RestaurantTableViewCell.self, forCellReuseIdentifier: RestaurantTableViewCell.identifier)
        
//        resturantTableVeiw.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: HeaderView.identifier)
       
      }

  }



// MARK: - Extension



// Setup Views
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
        let headerView1 = HeaderView()
//        headerView1.headerImage.image = UIImage(named: AppString.Image.headerImage)
//        headerView1.lblTitle.text = ""
        headerView1.backgroundColor = .white
        return headerView1
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
            return cell
    
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = ProductViewController()
            navigationController?.pushViewController(vc, animated: true)
            self.present(vc, animated: true, completion: nil)
            vc.modalPresentationStyle = .fullScreen
        } else if indexPath.row == 1 {
            let vc = ReviewsViewController()
            navigationController?.pushViewController(vc, animated: true)
            self.present(vc, animated: true, completion: nil)
            vc.modalPresentationStyle = .fullScreen        }
    }
 
}




// MARK: - Extension


// Setup ApiCalls
//private extension LoginViewController {
//    func LoginApi() {
//
//    }
//}
//


