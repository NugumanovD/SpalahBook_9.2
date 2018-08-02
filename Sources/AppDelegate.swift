//
//  AppDelegate.swift
//  spalahbook
//
//  Created by Michael on 7/12/18.
//  Copyright © 2018 Mission Edition. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // TODO: example
        self.window = MainScreen().start()
        
        return true
    }
}
