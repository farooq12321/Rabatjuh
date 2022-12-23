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
    
    var menuVC: SideMenuViewController!

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
        
        
        
        self.navigationController?.navigationBar.isHidden = true
       
        Setup()
        configureViews()
        
        menuVC =  SideMenuViewController()
        
        swipeGesture()
  
    }
    
    func swipeGesture(){
        let MoveLeft = UISwipeGestureRecognizer(target: self, action: #selector(selectGesture))
        MoveLeft.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(MoveLeft)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
       
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
     
      
    }
    
    
    //MARK: - Action
    
    func didTapMenuButton() {
       
        if AppDelegate.menu_bool
        {
            showMenu()
        }
        else
        {
            hideMenu()
        }
         
     }
    
    
    @objc func selectGesture(gesture:UISwipeGestureRecognizer){
        
        switch gesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            closeMenu()
        default:
            break
        }
        
    }
    
    
    @objc func tapGesture(){
        
    }
    
    
    
    func closeMenu(){
        if AppDelegate.menu_bool
        {
            //showMenu()
        }
        else
        {
            hideMenu()
        }
    }
    
    func showMenu()
    {
        UIView.animate(withDuration: 0.3){ ()->Void in
            
            self.menuVC.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
            self.addChild(self.menuVC)
            self.view.addSubview(self.menuVC.view)
            AppDelegate.menu_bool = false
        }
       
    }
    func hideMenu()
    {
        UIView.animate(withDuration: 0.3, animations: { ()->Void in
            self.menuVC.view.frame = CGRect(x: UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }) { (finished) in
            self.menuVC.view.removeFromSuperview()
        }
        
        AppDelegate.menu_bool = true
        
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








