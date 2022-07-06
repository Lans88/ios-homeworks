//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Артем Бажанов on 01.07.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    private let contView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var authorPost: UILabel = {
            let authorPost = UILabel()
            authorPost.translatesAutoresizingMaskIntoConstraints = false
            authorPost.font = .systemFont(ofSize: 20, weight: .bold)
            authorPost.textColor = .black
            authorPost.numberOfLines = 2
            return authorPost
        }()
    var imagePost: UIImageView = {
            let imagePost = UIImageView()
            imagePost.translatesAutoresizingMaskIntoConstraints = false
            //imagePost.backgroundColor = .black
            imagePost.contentMode = .scaleAspectFill
            return imagePost
        }()
    var descriptionPost: UILabel = {
            let descriptionPost = UILabel()
            descriptionPost.translatesAutoresizingMaskIntoConstraints = false
            descriptionPost.font = .systemFont(ofSize: 14, weight: .regular)
            descriptionPost.textColor = .systemGray
            descriptionPost.numberOfLines = 0
            return descriptionPost
        }()
    var likesPost: UILabel = {
            let likesPost = UILabel()
            likesPost.translatesAutoresizingMaskIntoConstraints = false
            likesPost.font = .systemFont(ofSize: 16, weight: .regular)
            likesPost.textColor = .black
            likesPost.numberOfLines = 1
            return likesPost
        }()
    var viewsPost: UILabel = {
            let viewsPost = UILabel()
            viewsPost.translatesAutoresizingMaskIntoConstraints = false
            viewsPost.font = .systemFont(ofSize: 16, weight: .regular)
            viewsPost.textColor = .black
            viewsPost.numberOfLines = 1
            return viewsPost
        }()
    var likes = 0
    var views = 0
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout() {
        contentView.addSubview(contView)
        contView.addSubview(authorPost)
        contView.addSubview(imagePost)
        contView.addSubview(descriptionPost)
        contView.addSubview(likesPost)
        contView.addSubview(viewsPost)
        NSLayoutConstraint.activate([
            contView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            contView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            contView.topAnchor.constraint(equalTo: contentView.topAnchor),
            
            authorPost.leadingAnchor.constraint(equalTo: contView.leadingAnchor, constant: 16),
            authorPost.trailingAnchor.constraint(equalTo: contView.trailingAnchor, constant: -16),
            authorPost.topAnchor.constraint(equalTo: contView.topAnchor, constant: 16),
            
            imagePost.widthAnchor.constraint(equalTo: contView.widthAnchor),
            imagePost.heightAnchor.constraint(equalTo: contView.widthAnchor),
            imagePost.topAnchor.constraint(equalTo: authorPost.bottomAnchor, constant: 12),
            
            descriptionPost.leadingAnchor.constraint(equalTo: contView.leadingAnchor, constant: 16),
            descriptionPost.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 16),
            descriptionPost.trailingAnchor.constraint(equalTo: contView.trailingAnchor, constant: -16),
            
            likesPost.leadingAnchor.constraint(equalTo: contView.leadingAnchor, constant: 16),
            likesPost.topAnchor.constraint(equalTo: descriptionPost.bottomAnchor, constant: 16),
            likesPost.bottomAnchor.constraint(equalTo: contView.bottomAnchor, constant: -16),
            
            viewsPost.trailingAnchor.constraint(equalTo: contView.trailingAnchor, constant: -16),
            viewsPost.topAnchor.constraint(equalTo: descriptionPost.bottomAnchor, constant: 16),
            viewsPost.bottomAnchor.constraint(equalTo: contView.bottomAnchor, constant: -16),
        ])
    }
}
