//
//  AppDelegate.swift
//  Slot
//
//  Created by 国分和弥 on 2020/01/18.
//  Copyright © 2020 Kazuya Kokubun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let storyboard:UIStoryboard = self.grabStoryboard()
        
        if let window = window{
            window.rootViewController = storyboard.instantiateInitialViewController() as UIViewController?
        }
        self.window?.makeKeyAndVisible()
        return true
    }
    
   func grabStoryboard() -> UIStoryboard{
        
        var storyboard = UIStoryboard()
        let height = UIScreen.main.bounds.size.height
        let width = UIScreen.main.bounds.size.width
        if height == 375 {
            storyboard = UIStoryboard(name: "iPhone8", bundle: nil)
            //iPhone8.storyboard
        }else if height == 414 {
            storyboard = UIStoryboard(name: "iPhone8Plus", bundle: nil)
            //iPhone8Plus
            if height == 414 && width == 896{
                storyboard = UIStoryboard(name: "Main", bundle: nil)
                //main.storyboard
            }
        }else if height == 375{
            storyboard = UIStoryboard(name: "iPhone11Pro", bundle: nil)
            //iPhone11Pro.storyboard
        }else if height == 1112{
            
            storyboard = UIStoryboard(name: "iPad", bundle: nil)
        }else{
            
            switch UIDevice.current.model {
            case "iPnone" :
                storyboard = UIStoryboard(name: "se", bundle: nil)
                break
            case "iPad" :
                storyboard = UIStoryboard(name: "iPad", bundle: nil)
                print("iPad")
                break
            default:
                break
            }
        }
        return storyboard
    }


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

