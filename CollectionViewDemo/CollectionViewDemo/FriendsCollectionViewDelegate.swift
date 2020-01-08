//
//  FriendsCollectionViewDelegate.swift
//  CollectionViewDemo
//
//  Created by Brett Markowitz on 1/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class FriendsCollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var friends = [Friend]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FriendCell.identifier, for: indexPath) as! FriendCell
        
        let friend = friends[indexPath.row]
        
        cell.configure(with: "avatar", name: friend.name, updatedText: "Updated January 1, 2020")
        
        return cell
    }
}
