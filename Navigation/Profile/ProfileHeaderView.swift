//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Артем Бажанов on 24.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    private lazy var avatarImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "avatar"))
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 55
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
        }()
    private lazy var nameLabel: UILabel = {
        let nameTextLabel = UILabel()
        nameTextLabel.text = "Anonimus"
        return nameTextLabel
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatarImage)
        addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        avatarImage.frame = CGRect(x: 16, y: 16, width: 110, height: 110)
        nameLabel.frame = CGRect(x: avatarImage.frame.maxX + 16, y: 27, width: self.bounds.width - (avatarImage.frame.maxX + 16) - 16, height: 32)
    }
    
}
