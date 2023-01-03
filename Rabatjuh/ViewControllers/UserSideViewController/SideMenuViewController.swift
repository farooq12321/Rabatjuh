//
//  SideMenuViewController.swift
//  Rabatjuh
//
//  Created by Apple on 05/12/2022.
//

import UIKit

class SideMenuViewController: UIViewController {

var SideMenuData = [
       SideMenu(buttonIcon: "ForkIcon", buttonName: "Near By Restaurants"),
       SideMenu(buttonIcon: "FavouriteIcon", buttonName: "Favourite"),
       SideMenu(buttonIcon: "FriendsIcon", buttonName: "Share With Friends"),
       SideMenu(buttonIcon: "PolicyIcon", buttonName: "Privacy Policy"),
       SideMenu(buttonIcon: "Terms&Condition", buttonName: "Terms & Conditions"),
       SideMenu(buttonIcon: "Logout", buttonName: "Logout")
   ]
    
    var menuVC: SideMenuViewController!

// MARK: - Header

lazy var headerView: SideMenuHeaderView = SideMenuHeaderView()

// MARK: - Body

private lazy var resturantTableVeiw = UITableView.TableVeiw()
    
    let veiw = UIView.veiw(
        backgroundcolor: .clear
    )
        

// MARK: - ViewController Life Cycle

        override func viewDidLoad() {
            super.viewDidLoad()

            Setup()
            configureViews()

    }
        
}

// MARK: - Extension

private extension SideMenuViewController {
func Setup() {
    
    resturantTableVeiw.backgroundColor = .white
    resturantTableVeiw.delegate = self
    resturantTableVeiw.dataSource = self
    resturantTableVeiw.separatorStyle = .none
    resturantTableVeiw.register(SideMenuTableViewCell.self, forCellReuseIdentifier: SideMenuTableViewCell.identifier)
  }
}

// MARK: - Extension

private extension SideMenuViewController {
func configureViews() {
    
    navigationController?.navigationBar.isHidden = true
    view.addSubview(resturantTableVeiw)
    view.addSubview(veiw)

    activateConstrains()
}

func activateConstrains() {
    resturantTableVeiw.snp.makeConstraints{ (make) in
        make.right.top.bottom.equalToSuperview()
        make.left.equalToSuperview().offset(70)
    
     
    }
    veiw.snp.makeConstraints{ (make) in
        make.right.equalTo(resturantTableVeiw.snp.left)
        make.top.bottom.left.equalToSuperview()
    }
    
}
}

        

// MARK: - Extension

    extension SideMenuViewController: UITableViewDelegate,UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = SideMenuHeaderView()
            headerView.backgroundColor = .white
            return headerView
            }
        
        func tableView(_ tableView: UITableView,heightForHeaderInSection section: Int
        ) -> CGFloat{
            return 200
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return SideMenuData.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: SideMenuTableViewCell.identifier,for: indexPath) as! SideMenuTableViewCell
            
             cell.icon.image = UIImage(named: SideMenuData[indexPath.row].buttonIcon)
             cell.lblName.text = SideMenuData[indexPath.row].buttonName
            cell.selectionStyle = .none
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            if indexPath.row == 0
            {
            }
            if indexPath.row == 1
            {
                let vc = FavouriteViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
            
            if indexPath.row == 3
            {
                let vc = PrivacyViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
            
            if indexPath.row == 5 {
                let vc = LoginViewController()
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
            }
        }
        
        
    }

