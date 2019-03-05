//
//  HomePresenter
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
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
        self.interactor.fetchBanners()

    }
}

// MARK: - HomeInteractorOutputProtocol

extension HomePresenter: HomeInteractorOutputProtocol {
    func fetchBannersDidSucced(banners: [BannerEntity]) {
        print("Banners Carregados \(banners.toJSONString() ?? "")")
        
        
    }
    
    func fetchBannersDidFail() {
        
    }
    

    // MARK: - Internal Methods

}
