//
//  HomeProtocols.swift
//  B2W
//
//  Created Patricia Souza on 05/3/2019.
//  Copyright © 2019 Youse. All rights reserved.
//
import Foundation
import UIKit

// MARK: - Wireframe

protocol HomeWireframeProtocol: class {
}

// MARK: - Interactor

protocol HomeInteractorInputProtocol {

}

// MARK: - Presenter

protocol HomePresenterInputProtocol: class {
	func viewDidLoad()
}

protocol HomeInteractorOutputProtocol: class {

}

// MARK: - View

protocol HomePresenterOutputProtocol: class {

}
