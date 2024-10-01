//
//  MainTabBarViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 01/10/2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    

    private func setupTabs(){
        let home = configTabNavItem(with: "Home", and: UIImage(named: "Home"), vc: HomeViewController())
        let search = configTabNavItem(with: "Search", and: UIImage(named: "Search"), vc: HomeViewController())
        let order = configTabNavItem(with: "Order", and: UIImage(named: "Order"), vc: HomeViewController())
        let notification = configTabNavItem(with: "Updates", and: UIImage(named: "Notification"), vc: HomeViewController())
        let profile = configTabNavItem(with: "Profile", and: UIImage(named: "Profile"), vc: HomeViewController())
        
        setViewControllers([home,search,order,notification,profile], animated: true)
    }
    private func configTabNavItem(with title: String?,and image: UIImage?,vc: UIViewController) -> UINavigationController{
        let navContoller = UINavigationController(rootViewController: vc)
        tabBar.barTintColor = .white
        tabBar.clipsToBounds = true
        navContoller.tabBarItem.title = title
        navContoller.tabBarItem.image = image
        return navContoller
    }

}
#Preview{
    MainTabBarViewController()
}
