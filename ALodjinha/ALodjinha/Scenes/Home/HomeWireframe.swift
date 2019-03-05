//
//  HomeWireframe
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//
import UIKit

class HomeWireframe: NSObject {

	// MARK: - Constants

    private let storyBoardName = "Home"
    private let viewIdentifier = "HomeView"
	// MARK: - Viper Module Properties

	private(set) weak var view: HomeView!

	// MARK: - Private

    override init() {
        super.init()
        let view = self.viewControllerFromStoryboard()
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        presenter.interactor = interactor
        presenter.wireframe = self
        presenter.view = view
        view.presenter = presenter
        interactor.output = presenter
        self.view = view
    }
    
    private func viewControllerFromStoryboard() -> HomeView {
        let storyboard = UIStoryboard(name: self.storyBoardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: self.viewIdentifier) as! HomeView
        return viewController
    }
}

// MARK: - HomeWireframeProtocol

extension HomeWireframe: HomeWireframeProtocol {
}
