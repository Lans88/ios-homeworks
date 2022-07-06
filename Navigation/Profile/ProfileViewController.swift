//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit
class ProfileViewController: UIViewController {
    var publicArray = Public.setupArray()
    private lazy var publicTable: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: String(describing: PostTableViewCell.self))
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
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTableViewCell.self), for: indexPath) as! PostTableViewCell
        cell.authorPost.text = publicArray[indexPath.row].author
        cell.imagePost.image = UIImage(named: publicArray[indexPath.row].image)
        cell.descriptionPost.text = publicArray[indexPath.row].description
        cell.likesPost.text = "Likes: \(String(publicArray[indexPath.row].likes))"
        cell.viewsPost.text = "Views: \(String(publicArray[indexPath.row].views))"
        return cell
    }
}
extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     UIView()
    }
}
    
