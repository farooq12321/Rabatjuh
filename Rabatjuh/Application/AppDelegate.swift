//
//  AppDelegate.swift
//  Swift Boiler Plate
//
//  Created by Sheraz Ahmed on 27/11/2022.
//

import UIKit
import SnapKit
import SwiftyJSON

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)

    
        
        let listViewController:LoginViewController = LoginViewController()

               self.window!.makeKeyAndVisible()
        self.window!.rootViewController = listViewController;

 
        
        return true
    }
    
//    func application1(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//      
//    
//
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateInitialViewController()
//    
//        window?.makeKeyAndVisible()
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
//            self.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
//        }
//        return true
//    }
}


