//
//  ErrorDict.swift
//  spalahbook
//
//  Created by Michael on 7/26/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

struct ErrorDict: Decodable, Error {
    let error: ServiceError
}
