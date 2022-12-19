//
//  ContainerViewController.swift
//  Rabatjuh
//
//  Created by Apple on 19/12/2022.
//

import UIKit

class ContainerViewController: UIViewController {

    
    enum MenuState {
        case opened
        case closed
    }
    
    private var menustate: MenuState = .closed
    
    let MenuVC = SideMenuViewController()
    let HomeVC = HomeViewController()
    let restVC = RestaurantDetailViewController()
    var navVC = UINavigationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC()

        
    }
    
    private func addChildVC(){
        
        MenuVC.delegate = self
        //menu
        
        addChild(MenuVC)
        view.addSubview(MenuVC.view)
        MenuVC.didMove(toParent: self)
        
        //home
        
        HomeVC.delegate = self
        let navVC = UINavigationController(rootViewController: HomeVC)
        addChild(navVC)
        view.addSubview(navVC.view)
        navVC.didMove(toParent: self)
        self.navVC = navVC
        
    }
    


}


extension ContainerViewController: HomeViewControllerDelegate {
   
   func didTapMenuButton() {
      toggleMenu(completion: nil)
   }
   
   func toggleMenu(completion: (() -> Void)?)
   {
       switch menustate {
       case .closed:
           //open
           UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
               
               self.navVC.view.frame.origin.x = self.HomeVC.view.frame.size.width - 100
           } completion: { [weak self] done in
               if done {
                   self?.menustate = .opened
//
               }
           }
           
       case .opened:
           //close
           UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
               
               self.navVC.view.frame.origin.x = 0
           } completion: { [weak self] done in
               if done {
                   self?.menustate = .closed
                   DispatchQueue.main.async {
                       completion?()
                   }
               }
           }
           
       }
   }
   
}

extension ContainerViewController: SideMenuViewControllerDelegate {
   func didSelect(menuItem: SideMenuViewController.MenuOption) {
       toggleMenu(completion: nil)
      
           switch menuItem {
           case .nearByRestaurants:
               self.resetToHome()
           case .favourite:
               self.addDeatil()
           case .withFriends:
               break
           case .privacy:
               break
           case .termsAndCondition:
              break
           case .logout:
              break
           
           
            }
       
   }
   
   func addDeatil(){
       let vc = restVC
             
       HomeVC.addChild(vc)
       HomeVC.view.addSubview(vc.view)
       vc.view.frame = view.frame
       vc.didMove(toParent: HomeVC)
       HomeVC.title = vc.title
       
   }
   
   func resetToHome(){
    restVC.view.removeFromSuperview()
    restVC.didMove(toParent: nil)
       HomeVC.title = "Home"
   }
   
   
}
