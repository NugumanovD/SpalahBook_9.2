//  
//  MainViewController.swift
//  spalahbook
//
//  Created by Michael on 7/24/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit

protocol MainView: class {
    func didLoad(posts: [Location])
    func handle(error: Error)
}

final class MainViewController: UIViewController {
    
    @IBOutlet private var headerView: MainHeaderView!
    @IBOutlet private var tableView: UITableView!
    
    private var output: MainViewOutput?
    
    private var posts: [Location] = []
    
    private lazy var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.didLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        output?.resetPosts()
        output?.loadPosts()
    }
}

private extension MainViewController {
    @IBAction func onAddClick(_ sender: UIButton) {
        output?.didClickAdd()
    }
}

extension MainViewController {
    func attach(output: MainViewOutput) {
        self.output = output
    }
}

extension MainViewController: MainView {
    func didLoad(posts: [Location]) {
        self.posts = posts
        tableView.reloadData()
    }
    
    func handle(error: Error) {
        showError(message: error.localizedDescription)
    }
}

// MARK: - TableView -

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.mapCell, for: indexPath) else { fatalError("Unable to deque MapCell") }
        
        let post = posts[indexPath.row]
        cell.configure(with: post, formatter: formatter)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row > posts.count - 5 {
            output?.loadPosts()
        }
    }
}
