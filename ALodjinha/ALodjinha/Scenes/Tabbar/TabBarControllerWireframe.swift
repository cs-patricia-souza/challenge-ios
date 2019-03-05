//
//  TabbarControllerWireframe.swift
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//

import UIKit

class TabBarControllerWireframe: NSObject {
    
    static let shared = TabBarControllerWireframe()
    
    // MARK: - Properties
    
    let tabBarController = UITabBarController()
    private var viewControllers: [UIViewController] = []
    
    override init() {
        super.init()
        self.buildTabs()
    }
    
    // MARK: - Private
    
    private func buildTabs() {
        guard let homeController = HomeWireframe().view else { return }
        
        self.viewControllers = [homeController]
        
        let navigationControllers: [UINavigationController] = self.viewControllers.map {
            let navigation = UINavigationController(rootViewController: $0)
            navigation.tabBarItem = $0.tabBarItem
            return navigation
        }
        
        self.tabBarController.viewControllers = navigationControllers
        self.tabBarController.tabBar.isTranslucent = false
        self.tabBarController.view.backgroundColor = UIColor.TabBar.backgroundColor
        self.tabBarController.tabBar.tintColor = UIColor.TabBar.tintColor
    }
    
    func presentLodjinhaHome(from window: UIWindow) {
        window.rootViewController = self.tabBarController
    }
    
    // MARK: - Helpers
    
    func reload() {
        self.viewControllers.removeAll()
        self.tabBarController.viewControllers?.removeAll()
        self.buildTabs()
    }
}
