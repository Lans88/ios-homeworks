//
//  LogInViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 25.06.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    private var isNavigateionBarHidden: Bool = true
    
    private var logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        }()
    private var logInButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.addTarget(self, action: #selector(authorization), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    lazy var logInText: UITextField = {
        let logtext = UITextField()
        logtext.translatesAutoresizingMaskIntoConstraints = false
        logtext.placeholder = "Email or phone"
        logtext.textAlignment = .left
        logtext.textColor = .black
        logtext.backgroundColor = .systemGray6
        logtext.font = .systemFont(ofSize: 16)
        logtext.layer.borderColor = UIColor.lightGray.cgColor
        logtext.layer.cornerRadius = 10
        logtext.layer.borderWidth = 0.5
        logtext.clearButtonMode = .whileEditing
        logtext.autocapitalizationType = .none
        logtext.delegate = self
        return logtext
    }()
    lazy var passText: UITextField = {
        let pass = UITextField()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.placeholder = "Password"
        pass.textAlignment = .left
        pass.textColor = .black
        pass.backgroundColor = .systemGray6
        pass.font = .systemFont(ofSize: 16)
        pass.layer.borderColor = UIColor.lightGray.cgColor
        pass.layer.cornerRadius = 10
        pass.layer.borderWidth = 0.5
        pass.clearButtonMode = .whileEditing
        pass.autocapitalizationType = .none
        pass.isSecureTextEntry = true
        pass.delegate = self
        return pass
    }()
    let notification = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        layout()
    }
    @objc func authorization() {
        let profileViewController = ProfileViewController()
        navigationController?.pushViewController(profileViewController, animated: true)
    }
    private func layout() {
        view.addSubview(logoImage)
        view.addSubview(logInText)
        view.addSubview(logInButton)
        view.addSubview(passText)
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImage.widthAnchor.constraint(equalToConstant: 100),
            logoImage.heightAnchor.constraint(equalToConstant: 100),
            
            logInText.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 120),
            logInText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logInText.heightAnchor.constraint(equalToConstant: 50),
            
            passText.topAnchor.constraint(equalTo: logInText.bottomAnchor),
            passText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            passText.heightAnchor.constraint(equalToConstant: 50),
            
            logInButton.topAnchor.constraint(equalTo: passText.bottomAnchor, constant: 16),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }


}


    
    
   

