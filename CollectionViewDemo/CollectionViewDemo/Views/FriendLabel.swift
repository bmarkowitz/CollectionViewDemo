//
//  FriendLabel.swift
//  CollectionViewDemo
//
//  Created by Brett Markowitz on 1/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class FriendLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, with style: UIFont) {
        super.init(frame: .zero)
        self.font = style
        
        translatesAutoresizingMaskIntoConstraints = false
        
        configure()
    }
    
    
    func configure() {
        
    }
}
