//
//  AppDelegate.swift
//  TinderApp
//
//  Created by admin on 26/02/19.
//  Copyright © 2019 AcknoTech. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var vcsArray = [UIViewController]()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        vcsArray = [ViewController(),SpaceVC(),Ocean()]
//        let tabVc = UITabBarController()
//        tabVc.viewControllers = [ViewController(),SpaceVC(),Ocean()]
//        window?.rootViewController = tabVc
        window?.makeKeyAndVisible()
        return true
    }
    
    enum ShortCutType:String{
        case mountain = "mountains"
        case space = "space"
        case ocean = "ocean"
    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        
        
        if let type = shortcutItem.type.components(separatedBy: ".").last {
            
            let navVC = window?.rootViewController as! UINavigationController
            navVC.setViewControllers(vcsArray, animated: true)
//            let navVC = window?.rootViewController as! UITabBarController
            
            switch type{
            case ShortCutType.space.rawValue:
//                navVC.selectedIndex = 1
                navVC.popToViewController(vcsArray[1], animated: true)
                completionHandler(true)
            case ShortCutType.ocean.rawValue:
//                navVC.selectedIndex = 2
                navVC.popToViewController(vcsArray[2], animated: true)
                completionHandler(true)
            default:
                navVC.popToRootViewController(animated: true)
//                navVC.selectedIndex = 0
                completionHandler(true)
               
            }
            
        }
        completionHandler(false)
    }

}

