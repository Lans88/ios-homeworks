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
        nameTextLabel.textColor = .black
        nameTextLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return nameTextLabel
        }()
    
    var textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.text = "Waiting for something..."
        textLabel.textColor = .gray
        textLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return textLabel
        }()
    
    var showButton: UIButton = {
        let showStatusButton = UIButton()
        showStatusButton.backgroundColor = .blue
        showStatusButton.setTitle("Show status", for: .normal)
        let cornerRadiusShadow: CGFloat = 4.0
        showStatusButton.layer.masksToBounds = false
        showStatusButton.layer.cornerRadius = cornerRadiusShadow
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowRadius = 4.0
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        let cgLayerShadowBezier = UIBezierPath(roundedRect: showStatusButton.bounds, byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: cornerRadiusShadow, height: cornerRadiusShadow)).cgPath
        showStatusButton.layer.shadowPath = cgLayerShadowBezier
        return showStatusButton
        }()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(showButton)
        showButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImage.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            avatarImage.widthAnchor.constraint(equalToConstant: 110),
            avatarImage.heightAnchor.constraint(equalToConstant: 110),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            showButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            showButton.topAnchor.constraint(equalTo: avatarImage.topAnchor, constant: 126),
            showButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            showButton.heightAnchor.constraint(equalToConstant: 50),
            textLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 126 - 34),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  override func layoutSubviews() {
//        super.layoutSubviews()
//        avatarImage.frame = CGRect(x: 16, y: 16, width: 110, height: 110)
//        nameLabel.frame = CGRect(x: avatarImage.frame.maxX + 16, y: 27, width: self.bounds.width - (avatarImage.frame.maxX + 16) - 16, height: 32)
//        textLabel.frame = CGRect(x: avatarImage.frame.maxX + 16, y: avatarImage.frame.maxY - 16 - 34, width: self.bounds.width - (avatarImage.frame.maxX + 16) - 16, height: 32)
//        showButton.frame = CGRect(x: 16, y: avatarImage.frame.maxY + 32, width: self.bounds.width - 16 - 16, height: 50)
        showButton.addTarget(self, action: #selector(actionButtonShowStatus), for: .touchUpInside)
    }
    
    @objc func actionButtonShowStatus() {
        print(textLabel.text)
    }
    
}


