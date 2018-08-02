//
//  Common.swift
//  spalahbook
//
//  Created by Michael on 7/25/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import Foundation

typealias Text = R.string.localizable

func onMainThread(_ block: @escaping () -> Void) {
    DispatchQueue.main.async {
        block()
    }
}

protocol Adjustable { }

extension Adjustable {
    func adjust(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension NSObject: Adjustable {}
