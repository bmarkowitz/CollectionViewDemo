//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Brett Markowitz on 1/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {
    
    var collectionView: UICollectionView!
    var collectionViewDelegate = FriendsCollectionViewDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
    }
    
    func configureViewController() {
        title = "Friends"
        view.backgroundColor = .systemBackground
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.dataSource = collectionViewDelegate
        collectionView.delegate = collectionViewDelegate
        
        view.addSubview(collectionView)
    }
}
