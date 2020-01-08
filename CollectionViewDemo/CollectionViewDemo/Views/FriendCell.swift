//
//  FriendCell.swift
//  CollectionViewDemo
//
//  Created by Brett Markowitz on 1/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class FriendCell: UICollectionViewCell {
    static let identifier = "FriendCell"
    
    var avatarImageView: UIImageView!
    var titleLabel: FriendLabel!
    var subtitleLabel: FriendLabel!
    
    func configure(with imageName: String, name: String, updatedText: String) {
        configureImageView(with: imageName)
        configureTitleLabel(with: name)
        configureSubtitleLabel(with: updatedText)
        
    }
    
    func configureImageView(with imageName: String) {
        avatarImageView = UIImageView(image: UIImage(named: imageName))
        addSubview(avatarImageView)
    }
    
    func configureTitleLabel(with text: String) {
        titleLabel = FriendLabel(text: text, with: .preferredFont(forTextStyle: .headline))
        addSubview(titleLabel)
    }
    
    func configureSubtitleLabel(with text: String) {
        subtitleLabel = FriendLabel(text: text, with: .preferredFont(forTextStyle: .subheadline))
        addSubview(subtitleLabel)
    }
}
