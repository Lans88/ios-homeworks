//
//  LogInViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 25.06.2022.
//

import UIKit

class LogInViewController: UIViewController {
    private var isNavigateionBarHidden: Bool = true
    
    private var logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        }()
    private lazy var logInTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.layer.borderColor = UIColor.lightGray.cgColor
        tableView.layer.borderWidth = 0.5
        tableView.layer.cornerRadius = 10
        tableView.backgroundColor = .systemGray6
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    private var logInButton: UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.layer.backgroundColor = UIColor.blue.cgColor
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        //button.backgroundImage(for: .normal) = UIImage(contentsOfFile: "colorSet")
        
        
        
        return button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        layoutTable()
        layoutLogo()
        layoutLogInButton()
        view.backgroundColor = .white
    }
    private func layoutLogo() {
        view.addSubview(logoImage)
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImage.widthAnchor.constraint(equalToConstant: 100),
            logoImage.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    func layoutTable() {
        view.addSubview(logInTableView)
        
        NSLayoutConstraint.activate([
            logInTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 340),
            logInTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logInTableView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    func layoutLogInButton() {
        view.addSubview(logInButton)
        NSLayoutConstraint.activate([
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
  
   



}

extension LogInViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
   
}
extension LogInViewController: UITableViewDelegate {
    
}
