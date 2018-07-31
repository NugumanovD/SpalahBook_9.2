//  
//  MainScreen.swift
//  spalahbook
//
//  Created by Michael on 7/24/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit

protocol MainRouter {
    func authorize()
    func openMap()
}

final class MainScreen {
    private weak var viewController: MainViewController?
    private weak var presenter: MainPresenter?
    
    private func instantiateViewController() -> UINavigationController {
        guard let viewController = R.storyboard.main.mainViewController() else { fatalError("Failed to load MainViewСontroller") }
        let navigation = UINavigationController(rootViewController: viewController)
        
        let presenter = MainPresenter()
        presenter.attach(router: self)
        presenter.attach(view: viewController)
        viewController.attach(output: presenter)
    
        self.presenter = presenter
        self.viewController = viewController
    
        return navigation
    }
    
    @discardableResult
    func start() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = instantiateViewController()
        window.makeKeyAndVisible()
        return window
    }
}

extension MainScreen: MainRouter {
    func authorize() {
        AuthScreen().open()
    }
    
    func openMap() {
        guard let navigation = viewController?.navigationController else { fatalError("No navigation found") }
        MapScreen(delegate: self).push(to: navigation)
    }
}

extension MainScreen: MapScreenDelegate {
    func mapScreenDidPublication(_ screen: MapScreen) {
        screen.back()
    }
}
