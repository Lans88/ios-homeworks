//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileHeaderView = ProfileHeaderView()
    
    var newButton: UIButton = {
        let nButton = UIButton()
        nButton.backgroundColor = .green
        nButton.setTitle("New button", for: .normal)
        nButton.layer.cornerRadius = 4.0
        nButton.layer.masksToBounds = false
        return nButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
       
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.bounds.width, height: view.bounds.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
        newButton.frame = CGRect(x: 0, y: view.safeAreaInsets.bottom, width: view.bounds.width, height: 50)
    }
    

}


