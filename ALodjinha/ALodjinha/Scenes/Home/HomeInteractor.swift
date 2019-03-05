//
//  HomeInteractor
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
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
    
    func fetchBanners() {
        self.homeRequests.fetchBanners(success: { [weak self] banners in
            self?.output.fetchBannersDidSucced(banners: banners)
        }) { [weak self] error, response in
            self?.output.fetchBannersDidFail()
        }
    }

}
