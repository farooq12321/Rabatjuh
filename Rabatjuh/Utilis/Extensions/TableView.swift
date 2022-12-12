//
//  TableView.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//
import UIKit
extension UITableView{
    
    static func TableVeiw() -> UITableView{
        let table = UITableView(frame: .zero, style: .grouped)
//        table.separatorStyle = .none
        
        
        table.estimatedRowHeight = 44.0
        table.rowHeight = UITableView.automaticDimension
    
        
        table.separatorStyle = UITableViewCell.SeparatorStyle.none
        return table
    }

}



