//  
//  MainPresenter.swift
//  spalahbook
//
//  Created by Michael on 7/24/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

protocol MainViewOutput {
    func didLoad()
    func didClickAdd()
    func loadPosts()
    func resetPosts()
}

final class MainPresenter {
    private var router: MainRouter?
    private weak var view: MainView?
    
    private let wallLoader = WallBatchLoader(id: "self", quantity: 36)
}

extension MainPresenter: MainViewOutput {
    func didClickAdd() {
        router?.openMap()
    }
    
    func didLoad() {
        if !Auth.current.isAuthorized {
            router?.authorize()
        }
    }
    
    func loadPosts() {
        if wallLoader.isAllLoaded { return }
        wallLoader.loadBatch { [weak self] (error) in
            onMainThread {
                if let error = error {
                    self?.view?.handle(error: error)
                    return
                }
                guard let this = self else { return }
                this.view?.didLoad(posts: this.wallLoader.posts)
            }
        }
    }
    
    func resetPosts() {
        wallLoader.reset()
        view?.didLoad(posts: [])
    }
}

extension MainPresenter {
    func attach(router: MainRouter) {
        self.router = router
    }
    
    func attach(view: MainView) {
        self.view = view
    }
}
