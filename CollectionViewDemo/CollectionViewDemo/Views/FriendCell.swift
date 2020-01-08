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
        backgroundColor = .systemGroupedBackground
        layer.cornerRadius = 15
        configureImageView(with: imageName)
        configureTitleLabel(with: name)
        configureSubtitleLabel(with: updatedText)
        
    }
    
    func configureImageView(with imageName: String) {
        avatarImageView = UIImageView(image: UIImage(named: imageName))
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.cornerRadius = 10
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(avatarImageView)
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 7.5),
            avatarImageView.heightAnchor.constraint(equalToConstant: 55),
            avatarImageView.widthAnchor.constraint(equalToConstant: 55)
        ])
    }
    
    func configureTitleLabel(with text: String) {
        titleLabel = FriendLabel(text: text, with: .preferredFont(forTextStyle: .headline))
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            titleLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 20),
            titleLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func configureSubtitleLabel(with text: String) {
        subtitleLabel = FriendLabel(text: text, with: .preferredFont(forTextStyle: .subheadline))
        addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 20),
            subtitleLabel.widthAnchor.constraint(equalToConstant: 175)
        ])
    }
}
