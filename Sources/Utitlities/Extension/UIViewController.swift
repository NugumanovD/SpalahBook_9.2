//
//  UIViewController.swift
//  spalahbook
//
//  Created by Michael on 7/31/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit

extension UIViewController {
    func showError(message: String) {
        let alert = UIAlertController(title: Text.generalError(), message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: Text.generalOk(), style: .default)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
