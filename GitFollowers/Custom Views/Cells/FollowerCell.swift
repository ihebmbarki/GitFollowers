//
//  FollowerCell.swift
//  GitFollowers
//
//  Created by Iheb Mbarki on 11/6/2024.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    let avatarimageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarimageView.downloadimage(from: follower.avatarUrl)
    }
    
    
    private func configure() {
        addSubview(avatarimageView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarimageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avatarimageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarimageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            avatarimageView.heightAnchor.constraint(equalTo: avatarimageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarimageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
