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
    
    var AllList = [Resturant]()
    var filterSearchList = [Resturant]()
    var searcing = false
    var header:HeaderView = HeaderView()
    
    func SearchText() {
        print("abc")
        self.filterSearchList.removeAll()
        let searchData: Int = header.searchBar.text!.count
        print(header.searchBar.text!)
        if searchData != 0
        {
            print("search")
            searcing = true
            var i: Int = 0
            for menu in AllList {
//            if let Menusearch = header.textfiled.text
                
                if let Menusearch = header.searchBar.text
                
                
                {
                    let range = menu.resturantName.lowercased().range(of: Menusearch, options: .caseInsensitive, range: nil, locale: nil)
                    if range != nil
                    {
                        self.filterSearchList.append(menu)
                    }
                }
                i=i+1
            }
        }
        else
        {
            filterSearchList = AllList
            searcing = false
        }
        
        resturantTableVeiw.reloadData()
    }
    
    
    
    var menuVC: SideMenuViewController!

    weak var delegate: HomeViewControllerDelegate?

    // MARK: - Data
    var ResturantData = [
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:""),
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:""),
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF"),
        Resturant(resturantImage: "restaurantImage", resturantName: "Gloria jeens Cofee's", resturantDistance: "25 km", resturantDiscription: "There are many situations when you want to create",discount:"25% OFF")

    ]

    // MARK: - Header

    lazy var headerView: HeaderView = HeaderView()
    
    // MARK: - Body
    
    private lazy var resturantTableVeiw = UITableView.TableVeiw()
  
    // MARK: - ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        Setup()
        configureViews()
        menuVC =  SideMenuViewController()
        swipeGesture()
        TapGesture()

    
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
    
    func swipeGesture(){
        let MoveRight = UISwipeGestureRecognizer(target: self, action: #selector(selectGesture))
        MoveRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(MoveRight)
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
    
    
    // Tap Gesture Working

    func TapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.hidMenu(_:)))
        menuVC.veiw.addGestureRecognizer(tap)
    }

@objc func hidMenu(_ sender: UITapGestureRecognizer? = nil)
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
        
        self.navigationController?.navigationBar.isHidden = true
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        navigationController?.navigationBar.tintColor = UIColor.backButtonColor
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
     
            let vc = RestaurantDetailViewController()
            self.navigationController?.pushViewController(vc, animated: true)

            
    }
 
}








