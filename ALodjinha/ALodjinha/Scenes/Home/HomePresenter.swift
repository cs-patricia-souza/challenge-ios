//
//  HomePresenter.swift
//  B2W
//
//  Created Patricia Souza on 05/3/2019.
//  Copyright © 2019 Youse. All rights reserved.
//
import UIKit

class HomePresenter: NSObject {

    // MARK: - Viper Properties

    weak var view: HomePresenterOutputProtocol!
    var interactor: HomeInteractorInputProtocol!
    var wireframe: HomeWireframeProtocol!

    // MARK: - Public Properties

    // MARK: - Internal Properties

    // MARK: - Private Properties

    // MARK: - Inits

    // MARK: - Public Methods

    // MARK: - Internal Methods

    // MARK: - Private Methods

    // MARK: - Notifications
}

// MARK: - HomePresenterInputProtocol

extension HomePresenter: HomePresenterInputProtocol {

    // MARK: - Internal Methods

    func viewDidLoad() {
        
        print("presenter viewdidload")

    }
}

// MARK: - HomeInteractorOutputProtocol

extension HomePresenter: HomeInteractorOutputProtocol {

    // MARK: - Internal Methods

}
