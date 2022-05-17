//
//  AppDelegate.swift
//  Navigation
//
//  Created by Артем Бажанов on 10.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController()
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        let navigationTape = UINavigationController(rootViewController: FeedViewController())
        let navigationProfile = UINavigationController(rootViewController: ProfileViewController())
        navigationTape.tabBarItem.title = "Лента"
        navigationProfile.tabBarItem.title = "Профиль"
        navigationTape.tabBarItem.image = UIImage(systemName: "t.square")
        navigationProfile.tabBarItem.image = UIImage(systemName: "person.fill")
        tabBarController.viewControllers = [navigationTape, navigationProfile]
        self.window?.backgroundColor = UIColor.white
        return true
    }

 


}



