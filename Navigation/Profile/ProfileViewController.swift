//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    private lazy var publicTable: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
       
    }
    private func layout() {
        view.addSubview(publicTable)
        NSLayoutConstraint.activate([
            publicTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            publicTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            publicTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            publicTable.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        publicArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        var content: UIListContentConfiguration = cell.defaultContentConfiguration()
        content.text = publicArray[indexPath.row].author
        content.image = UIImage(named: publicArray[indexPath.row].image)
        content.text = publicArray[indexPath.row].description
        content.text = "Likes: \(publicArray[indexPath.row].likes)"
        content.text = "Views: \(publicArray[indexPath.row].views)"
        cell.contentConfiguration = content
        return cell
    }
    
    
}
extension ProfileViewController: UITableViewDelegate {
    
}
