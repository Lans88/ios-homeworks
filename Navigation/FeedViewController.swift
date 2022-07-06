//
//  FeedViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit

class FeedViewController: UIViewController {
    let buttonPost = UIButton()
    var postNew = Post(title: "Первый пост в приложении")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemYellow
        title = "Лента"
        self.buttonPost.setTitle("Прочесть", for: .normal)
        buttonPost.addTarget(self, action: #selector(readPost), for: .touchUpInside)
        view.addSubview(buttonPost)
        buttonPost.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonPost.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonPost.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
    }
    @objc func readPost() {
        let postVC = PostViewController(post: postNew)
        navigationController?.pushViewController(postVC, animated: true)
    }

}


