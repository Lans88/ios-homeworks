//
//  InfoViewController.swift
//  Navigation
//
//  Created by Артем Бажанов on 12.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    let buttonAllert = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        self.buttonAllert.setTitle("Предупреждение", for: .normal)
        buttonAllert.addTarget(self, action: #selector(readAlert), for: .touchUpInside)
        view.addSubview(buttonAllert)
        buttonAllert.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonAllert.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonAllert.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    @objc func readAlert(){
        let infoAlert = UIAlertController(title: "Внимание!!!", message: "Ты зачем сюда залез?!", preferredStyle: .alert)
        let sorryAction = UIAlertAction(title: "Ой простите, я случайно", style: .cancel, handler: {_ in print("Больше так не делай!")})
        infoAlert.addAction(sorryAction)
        let wantAction = UIAlertAction(title: "Захотел и залез!", style: .default)
        infoAlert.addAction(wantAction)
        present(infoAlert, animated: true, completion: nil)
        
    }

}


