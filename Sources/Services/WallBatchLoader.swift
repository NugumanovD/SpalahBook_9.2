//
//  WallBatchLoader.swift
//  spalahbook
//
//  Created by Michael on 7/31/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

class WallBatchLoader {
    private let quantity: Int
    private let id: String
    
    init(id: String, quantity: Int) {
        self.id = id
        self.quantity = quantity
    }
    
    private let service = WallService()
    
    var posts: [Location] = []
    private(set) var isAllLoaded = false
    private(set) var isLoading = false
    
    func loadBatch(_ completion: @escaping (Error?) -> Void) {
        if isLoading { return }
        if isAllLoaded {
            completion(nil)
            return
        }
        
        isLoading = true
        service.getPublications(id: id, offset: posts.count, quantity: quantity) { [weak self] (locations, error) in
            defer { self?.isLoading = false }
            
            if let error = error {
                completion(error)
                return
            }
            
            guard let locations = locations else {
                completion(nil)
                return
            }
            
            if locations.isEmpty {
                self?.isAllLoaded = true
            }
            
            self?.posts.append(contentsOf: locations)
            completion(nil)
        }
    }
    
    func reset() {
        posts = []
        isAllLoaded = false
    }
}
