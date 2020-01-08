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
        
        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).size.width
        
        let minColumnWidth = CGFloat(300.0)
        let maxNumberOfColumns = Int(availableWidth / minColumnWidth)
        let cellWidth = (availableWidth / CGFloat(maxNumberOfColumns)).rounded(.down)
        
//        self.itemSize = CGSize(width: collectionView.bounds.inset(by: collectionView.layoutMargins).size.width, height: 70)
        
        self.itemSize = CGSize(width: cellWidth, height: 70)
        self.sectionInset = UIEdgeInsets(top: minimumInteritemSpacing, left: 0, bottom: 0, right: 0)
        self.sectionInsetReference = .fromSafeArea
    }
}
