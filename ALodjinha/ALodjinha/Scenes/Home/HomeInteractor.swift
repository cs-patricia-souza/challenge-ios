//
//  HomeInteractor.swift
//  B2W
//
//  Created Patricia Souza on 05/3/2019.
//  Copyright © 2019 Youse. All rights reserved.
//
import UIKit

class HomeInteractor: NSObject {

    // MARK: - Viper Properties

    weak var output: HomeInteractorOutputProtocol!

    // MARK: - Public Properties

    // MARK: - Internal Properties
    var homeRequests: HomeRequests = HomeRequests()

    // MARK: - Private Properties

    // MARK: - Inits

    // MARK: - Public Methods

    // MARK: - Internal Methods

    // MARK: - Private Methods

    // MARK: - Notifications

}

// MARK: - HomeInteractorInputProtocol

extension HomeInteractor: HomeInteractorInputProtocol {

    // MARK: - Internal Methods

}
