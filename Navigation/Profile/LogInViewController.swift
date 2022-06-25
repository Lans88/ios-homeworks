//
//  LogInViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 25.06.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    private lazy var logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationBar.isHidden = true
        view.backgroundColor = .white
        view.addSubview(logoImage)
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImage.widthAnchor.constraint(equalToConstant: 100),
            logoImage.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
   



}
