//
//  SearchBar.swift
//  Rabatjuh
//
//  Created by Apple on 02/12/2022.
//

import UIKit
extension UISearchBar{
    
    static func searchbar() -> UISearchBar{
        let search = UISearchBar()
//        search.backgroundColor = .white
////        search.tintColor = .red
////        search.tintColor = .blue
        search.tintColor = UIColor.red
//        search.barTintColor = UIColor.searchbarcolor
        //search.barTintColor = UIColor(red: 0/255, green: 74/255, blue: 103/255, alpha: 1)
        //search.backgroundColor = .red
        search.setSearchFieldBackgroundImage(UIImage(named: "headerImage"), for:
                                                UIControl.State.normal)
        
     

        search.layer.cornerRadius = 100.0
        


//        table.separatorStyle = .none
        return search
    }
    
      

}
