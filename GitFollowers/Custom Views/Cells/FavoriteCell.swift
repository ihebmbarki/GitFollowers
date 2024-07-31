//
//  FavoriteCell.swift
//  GitFollowers
//
//  Created by Iheb Mbarki on 31/7/2024.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    static let reuseID = "FavoriteCell"
    let avatarimageView = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .left, fontSize: 26)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favorite: Follower) {
        usernameLabel.text = favorite.login
        avatarimageView.downloadimage(from: favorite.avatarUrl)
    }
    
    private func configure() {
        
        addSubview(avatarimageView)
        addSubview(usernameLabel)
        
        accessoryType = .disclosureIndicator
        let padding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarimageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarimageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarimageView.heightAnchor.constraint(equalToConstant: 60),
            avatarimageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarimageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])

    }
}
