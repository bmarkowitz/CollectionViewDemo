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
    
    var avatarImageView = UIImageView(frame: .zero)
    var titleLabel = FriendLabel(textAlignment: .left, with: .preferredFont(forTextStyle: .headline))
    var subtitleLabel = FriendLabel(textAlignment: .left, with: .preferredFont(forTextStyle: .subheadline))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        layer.cornerRadius = 15
        layer.cornerCurve = .continuous
        backgroundColor = .secondarySystemGroupedBackground
        configureImageView()
        configureTitleLabel()
        configureSubtitleLabel()
        
    }
    
    func set(with imageName: String, name: String, updatedText: String) {
        avatarImageView.image = UIImage(named: imageName)
        titleLabel.text = name
        subtitleLabel.text = updatedText
    }
    
    func configureImageView() {
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
    
    func configureTitleLabel() {
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            titleLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 20),
            titleLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func configureSubtitleLabel() {
        addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 20),
            subtitleLabel.widthAnchor.constraint(equalToConstant: 175)
        ])
    }
}
