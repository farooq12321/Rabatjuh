//
//  CllectionView.swift
//  Rabatjuh
//
//  Created by Apple on 30/11/2022.
//

import UIKit
extension UICollectionView{
    
    static func collectionView(
        direction:UICollectionView.ScrollDirection = .horizontal,
        lineSpacing:CGFloat = 1.0,
        interitemspacing:CGFloat = 1.0
    ) -> UICollectionView{
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = direction
        layout.minimumLineSpacing = lineSpacing
        layout.minimumInteritemSpacing = interitemspacing
        layout.estimatedItemSize.width = 25
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collection.backgroundColor = .clear
        
        return collection
    }

}
