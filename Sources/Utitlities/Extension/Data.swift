//
//  Data.swift
//  spalahbook
//
//  Created by Michael on 7/26/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import Foundation

extension Data {
    var json: Any? {
        // let string = String(data: self, encoding: .utf8)
        // let cleanString = string?.replacingOccurrences(of: "'", with: "\"")
        // guard let data = cleanString?.data(using: .utf8) else { return nil }
        return try? JSONSerialization.jsonObject(with: self, options: [])
    }
}
