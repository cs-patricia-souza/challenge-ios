//
//  HomeProtocols
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//
import Foundation
import UIKit

// MARK: - Wireframe

protocol HomeWireframeProtocol: class {
}

// MARK: - Interactor

protocol HomeInteractorInputProtocol {
    func fetchBanners()

}

// MARK: - Presenter

protocol HomePresenterInputProtocol: class {
	func viewDidLoad()
}

protocol HomeInteractorOutputProtocol: class {
    func fetchBannersDidSucced(banners: [BannerEntity])
    func fetchBannersDidFail()

}

// MARK: - View

protocol HomePresenterOutputProtocol: class {

}
