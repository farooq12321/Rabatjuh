//
//  CllectionView.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit
extension UICollectionView{
    
    static func collectionView() -> UICollectionView{
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return collection
    }

}
