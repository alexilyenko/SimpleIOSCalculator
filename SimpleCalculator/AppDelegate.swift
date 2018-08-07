//
//  AppDelegate.swift
//  SimpleCalculator
//
//  Created by Alex Ilyenko on 9/19/17.
//  Copyright © 2017 Alex Ilyenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if !UserDefaults.standard.bool(forKey: "isNotFirstLaunch") {
            //Set autoAdjustSettings and isNotFirstLaunch to true
            UserDefaults.standard.set(false, forKey: "enableWaits")
            UserDefaults.standard.set(true, forKey: "isNotFirstLaunch")

            //Sync NSUserDefaults
            UserDefaults.standard.synchronize()
        }

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}
