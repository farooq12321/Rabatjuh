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
    var navVC:  UINavigationController?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC()
       
        
        let pangesture = UIPanGestureRecognizer(target: self, action: #selector(handleGestures))
        pangesture.delegate = self
        view.addGestureRecognizer(pangesture)
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(handleGestures))
//        tap.delegate = self
//        view.addGestureRecognizer(tap)

        
//        addChildVC()

        
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



extension ContainerViewController:UIGestureRecognizerDelegate{

    @objc func handleGestures(){
        toggleMenue(completion: nil)
       
    }

        func toggleMenue(completion: (() -> Void)?)
        {
            
            
            switch menustate {
//            case .closed:
//                HomeVC.reloadInputViews()
//                break
//                //open
////                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
////
////                 self.navVC?.view.frame.origin.x = self.HomeVC.view.frame.size.width - 100
////                } completion: { [weak self] done in
////                    if done {
////                        self?.menustate = .opened
////                    }
////                }

            case .opened:
                //close
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){

                 self.navVC?.view.frame.origin.x = 0

                } completion: { [weak self] done in
                    if done {
                        self?.menustate = .closed
                        DispatchQueue.main.async {
                            completion?()
                        }
                    }
                }

            case .closed:
                resetToHome()
            }
        }

            func resetToHome(){

}
}


//extension ContainerViewController:UIGestureRecognizerDelegate{
//
//
//
//
//
//    @objc func handlepangesutre(){
//        toggleMenue(completion: nil)
//    }
//
//        func toggleMenue(completion: (() -> Void)?)
//        {
//            switch menustate {
//            case .closed:
//                break
//                //open
////                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
////
////                 self.navVC?.view.frame.origin.x = self.HomeVC.view.frame.size.width - 100
////                } completion: { [weak self] done in
////                    if done {
////                        self?.menustate = .opened
////                    }
////                }
//
//            case .opened:
//                //close
//                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
//
//                 self.navVC?.view.frame.origin.x = 0
//
//                } completion: { [weak self] done in
//                    if done {
//                        self?.menustate = .closed
//                        DispatchQueue.main.async {
//                            completion?()
//                        }
//                    }
//                }
//
//            }
//        }
//
//}



extension ContainerViewController: HomeViewControllerDelegate {
    
    
   
   func didTapSideMenuButton() {
      toggleMenu(completion: nil)
   }
   
   func toggleMenu(completion: (() -> Void)?)
   {
       switch menustate {
       case .closed:
           //open
           UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
               
        self.navVC?.view.frame.origin.x = self.HomeVC.view.frame.size.width - 100
            self.HomeVC.view.backgroundColor = .red
           } completion: { [weak self] done in
               if done {
                   self?.menustate = .opened
               }
           }
           
       case .opened:
           //close
           UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut){
               
            self.navVC?.view.frame.origin.x = 0

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
            break

           case .favourite:
               break
           case .withFriends:
               break
           case .privacy:
               break
           case .termsAndCondition:
              break
           case .logout:
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
              break
           
           
            }
       
   }
    


   
   
}
