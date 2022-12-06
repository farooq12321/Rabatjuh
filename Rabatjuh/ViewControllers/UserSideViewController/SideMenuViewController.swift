//
//  SideMenuViewController.swift
//  Rabatjuh
//
//  Created by Apple on 05/12/2022.
//

import UIKit

class SideMenuViewController: UIViewController {

    static var identifier = "SideMenuViewController"
    // MARK: - Data
    var SideMenuData = [
        SideMenu(buttonIcon: "ForkIcon", buttonName: "Near By Restaurants"),
        SideMenu(buttonIcon: "FavouriteIcon", buttonName: "Favourite"),
        SideMenu(buttonIcon: "FriendsIcon", buttonName: "Share With Friends"),
        SideMenu(buttonIcon: "PolicyIcon", buttonName: "Privacy Policy"),
        SideMenu(buttonIcon: "Terms&Condition", buttonName: "Terms & Conditions"),
        SideMenu(buttonIcon: "Logout", buttonName: "Logout")
    ]

    // MARK: - Background

    
    // MARK: - Header

    lazy var headerView: SideMenuHeaderView = SideMenuHeaderView()
    
    // MARK: - Body
    
    private lazy var sideMenuTableView = UITableView.TableVeiw()
    
   
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

private extension SideMenuViewController {
    func Setup() {
        sideMenuTableView.delegate = self
        sideMenuTableView.dataSource = self
//        sideMenuTableView.backgroundColor = .white

      
        sideMenuTableView.register(SideMenuTableViewCell.self, forCellReuseIdentifier: SideMenuTableViewCell.identifier)

       
      }

  }



// MARK: - Extension



// Setup Views
private extension SideMenuViewController {
    func configureViews() {
        
        navigationController?.navigationBar.isHidden = true
        self.view.addSubview(sideMenuTableView)
        view.backgroundColor = .white

        activateConstrains()
    }
    
    func activateConstrains() {
        sideMenuTableView.snp.makeConstraints{ (make) in
            make.right.top.bottom.equalTo(view.layoutMarginsGuide)
            make.left.equalTo(view.layoutMarginsGuide).offset(60)
         
        }
        
    }
}


// MARK: - Extension

 extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource{


    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView1 = SideMenuHeaderView()
        //headerView1.backgroundColor = .white
        return headerView1
        }

    func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int
    ) -> CGFloat{
        return 143
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SideMenuData.count
        
}
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
           let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuTableViewCell.identifier,for: indexPath) as! SideMenuTableViewCell
            cell.icon.image = UIImage(named: SideMenuData[indexPath.row].buttonIcon)
            cell.lblName.text = SideMenuData[indexPath.row].buttonName
            return cell
    
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 1 {
//            let vc = ProductViewController()
//            vc.modalPresentationStyle = .fullScreen
//            self.present(vc, animated: true,completion: nil)
//        } else if indexPath.row == 0 {
//            let viewController = HomeViewController()
//            navigationController?.pushViewController(viewController, animated: true)
//            self.present(viewController, animated: true, completion: nil)
//            viewController.modalPresentationStyle = .fullScreen
//        }
        
       if indexPath.row == 0
       {
            let viewController = HomeViewController()
            navigationController?.pushViewController(viewController, animated: true)
            self.present(viewController, animated: true, completion: nil)
            viewController.modalPresentationStyle = .fullScreen
       }else if indexPath.row == 1
       {
             let vc = ProductViewController()
             navigationController?.pushViewController(vc, animated: true)
             self.present(vc, animated: true, completion: nil)
             vc.modalPresentationStyle = .fullScreen
       }else if indexPath.row == 2
       {
             let vc = ReviewsViewController()
             navigationController?.pushViewController(vc, animated: true)
             self.present(vc, animated: true, completion: nil)
             vc.modalPresentationStyle = .fullScreen
        
        
       }else if  indexPath.row == 5 {
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
       }
 
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

    



