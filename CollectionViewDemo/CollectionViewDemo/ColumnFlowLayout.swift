//
//  ColumnFlowLayout.swift
//  CollectionViewDemo
//
//  Created by Brett Markowitz on 1/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class ColumnFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        guard let collectionView = collectionView else { return }
        
        self.itemSize = CGSize(width: collectionView.bounds.inset(by: collectionView.layoutMargins).size.width, height: 70)
        self.sectionInset = UIEdgeInsets(top: minimumInteritemSpacing, left: 0, bottom: 0, right: 0)
        self.sectionInsetReference = .fromSafeArea
    }

}
