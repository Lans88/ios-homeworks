//
//  PostViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    var post: Post
    
    init(post: Post){
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = post.title
        view.backgroundColor = .systemTeal
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(showInfo))
    }
    

    @objc func showInfo() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true, completion: nil)
    }

}


