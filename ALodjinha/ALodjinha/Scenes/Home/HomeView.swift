//
//  HomeView
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//
import UIKit

class HomeView: UIViewController {

    // MARK: - Viper Properties

    var presenter: HomePresenterInputProtocol!

    // MARK: - Outlets

    // MARK: - Public Properties

    // MARK: - Internal Properties

    // MARK: - Private Properties

    // MARK: - Inits

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "homeDeselected"), tag: 0)
    }

    // MARK: - Public Methods

    // MARK: - Internal Methods

    // MARK: - Private Methods

    // MARK: - Actions

    // MARK: - Notifications

}

// MARK: - HomePresenterOutputProtocol

extension HomeView: HomePresenterOutputProtocol {

    // MARK: - Internal Methods

}
